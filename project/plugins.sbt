resolvers += "sonatype-releases" at "https://oss.sonatype.org/content/repositories/releases/"

resolvers += "Osgeo Repo" at "http://download.osgeo.org/webdav/geotools/"

resolvers += "Boundless" at "http://repo.boundlessgeo.com/main"

resolvers += "jgit-repo" at "http://download.eclipse.org/jgit/maven"

resolvers += DefaultMavenRepository

//addSbtPlugin("net.virtual-void" % "sbt-dependency-graph" % "0.8.2")

addSbtPlugin("com.eed3si9n" % "sbt-assembly" % "0.14.3")

addSbtPlugin("org.typelevel" % "sbt-typelevel" % "0.3.1")

addSbtPlugin("com.scalapenos" % "sbt-prompt" % "1.0.0")

addSbtPlugin("com.earldouglas" % "xsbt-web-plugin" % "3.0.0")

// site and docs publish,  com.typesafe.sbt:sbt-site:0.8.1 -> 1.0.0 ?
addSbtPlugin("com.typesafe.sbt" % "sbt-site" % "1.0.0")

addSbtPlugin("com.typesafe.sbt" % "sbt-ghpages" % "0.5.4")

//addSbtPlugin("org.scalastyle" %% "scalastyle-sbt-plugin" % "0.8.0")

//addSbtPlugin("org.scoverage" % "sbt-scoverage" % "1.0.4")

