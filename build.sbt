
scalaVersion := "2.11.8"

version := "1.0-SNAPSHOT"

val postgresDriver = "9.4.1211.jre7"
val ScalaCheck      = "1.12.5"
val ScalaTest       = "2.2.6"

// val geotoolsVersion = "13.1" // 13.6, 14.5, 15.4, 16.2

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

// custom geoserver download and run with app-schema to test gwml2 sql and workspace
lazy val downloadFromZip = taskKey[Unit]("Download the sbt zip and extract it to ./temp")


downloadFromZip := {
  if(java.nio.file.Files.notExists(new File("temp").toPath())) {
    println("Path does not exist, downloading...")
    IO.unzipURL(new URL("http://sourceforge.net/projects/geoserver/files/GeoServer/2.10.2/geoserver-2.10.2-war.zip"), new File("temp"))
  } else {
    println("Path exists, no need to download.")
  }
}

compile in Test <<= (compile in Test).dependsOn(downloadFromZip)


