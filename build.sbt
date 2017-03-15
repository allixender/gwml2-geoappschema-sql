
scalaVersion := "2.11.8"

version := "1.0-SNAPSHOT"

val postgresDriver = "9.4.1211.jre7"
val ScalaCheck      = "1.12.5"
val ScalaTest       = "2.2.6"

// val geotoolsVersion = "13.1" // 13.6, 14.5, 15.4, 16.2
val geoserverVersion = "2.10.2"

libraryDependencies ++= Seq(
  "com.vividsolutions" % "jts" % "1.13",
  "org.scalatest"       %%  "scalatest"      % ScalaTest,
  "org.scalacheck"      %% "scalacheck"      % ScalaCheck,
  "com.typesafe"        % "config"           % "1.3.1",
  "com.typesafe.scala-logging" %% "scala-logging" % "3.5.0"

  // "org.geotools" % "gt-epsg-hsql" % geotoolsVersion,
  // "org.geotools" % "gt-referencing" % geotoolsVersio
)

resolvers ++= Seq(
  "Typesafe Repo"           at "http://repo.typesafe.com/typesafe/releases/",
  "Scalaz Bintray Repo" at "https://dl.bintray.com/scalaz/releases",
  "allixender maven" at "https://dl.bintray.com/allixender/maven2"
)


scalacOptions in ThisBuild ++= Seq(
  "-target:jvm-1.7",
  "-encoding", "UTF-8",
  "-deprecation", // warning and location for usages of deprecated APIs
  "-feature", // warning and location for usages of features that should be imported explicitly
  "-unchecked", // additional warnings where generated code depends on assumptions
  "-Xlint", // recommended additional warnings
  "-Ywarn-adapted-args", // Warn if an argument list is modified to match the receiver
  "-Ywarn-value-discard", // Warn when non-Unit expression results are unused
  "-Ywarn-inaccessible",
  "-Ywarn-dead-code",
  "-language:reflectiveCalls"
)

javacOptions in Compile ++= Seq(
  "-encoding", "UTF-8",
  "-source", "1.7",
  "-target", "1.7",
  "-g",
  "-Xlint:-path",
  "-Xlint:deprecation",
  "-Xlint:unchecked"
)



// new sbt-site 1.0.0 config SiteScaladocPlugin incompatible with activator sbt-site bundle 0.8.1
lazy val root = (project in file(".")).enablePlugins(WebappPlugin, JettyPlugin, SiteScaladocPlugin)

// custom geoserver download and run with app-schema to test gwml2 sql and workspace
cleanFiles <+= baseDirectory { base => base / "temp" }

lazy val geoserverDownloadZip = taskKey[Unit]("Download the geoserver zip and extract it to ./temp")

geoserverDownloadZip := {
  if(java.nio.file.Files.notExists(new File("temp/geoserver.war").toPath())) {
    println("Path does not exist, downloading...")
    IO.unzipURL(new URL(s"https://sourceforge.net/projects/geoserver/files/GeoServer/$geoserverVersion/geoserver-$geoserverVersion-war.zip/download"), new File("temp"))

  } else {
    println(s"Geoserver WAR exists, no need to download.")
  }
  if(java.nio.file.Files.notExists(new File("temp/webapp").toPath())) {
    IO.move(new File("temp/geoserver.war"), new File("temp/geoserver.zip"))
    IO.unzip(new File("temp/geoserver.zip"), new File("temp/webapp"))
  } else {
    println(s"Geoserver webapp folder exists, no need to extract WAR.")
  }
  if(java.nio.file.Files.notExists(new File(s"temp/app-schema-plugin.zip").toPath())) {
    IO.download(new URL(s"https://sourceforge.net/projects/geoserver/files/GeoServer/$geoserverVersion/extensions/geoserver-$geoserverVersion-app-schema-plugin.zip"),
      new File("temp/app-schema-plugin.zip"))
    IO.unzip(new File("temp/app-schema-plugin.zip"), new File("temp/webapp/WEB-INF/lib"))
  } else {
    println("AppSchema plugin exists, no need to download.")
  }
}

compile in Compile <<= (compile in Compile).dependsOn(geoserverDownloadZip)

containerArgs := Seq("--path", "/geoserver")

javaOptions in Jetty += "-DdbUrl=jdbc:postgresql://127.0.0.1/appschemadev"

sourceDirectory in webappPrepare := (baseDirectory in Compile).value / "temp/webapp"

