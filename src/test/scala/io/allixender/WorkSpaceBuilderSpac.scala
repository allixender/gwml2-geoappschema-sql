package io.allixender

import org.scalatest.{Matchers, WordSpec}

import scala.xml.{NamespaceBinding, NodeSeq, XML}

class WorkSpaceBuilderSpac extends WordSpec with Matchers {

  "WorkSpaceBuilder" should {

    val nsGmdPrefix = "gmd"
    val nsGmdUri = "http://www.isotc211.org/2005/gmd"
    val ns = NamespaceBinding(nsGmdPrefix, nsGmdUri, null)

    "get workspace template" in {
      WorkSpaceBuilder.workspaceXmlTemplate(ns) shouldEqual
<workspace>
  <id>gmd_workspace</id>
  <name>gmd</name>
</workspace>
    }

    "get namesapce template" in {
      WorkSpaceBuilder.namespaceXmlTemplate(ns) shouldEqual
<namespace>
  <id>gmd_namespace</id>
  <prefix>gmd</prefix>
  <uri>http://www.isotc211.org/2005/gmd</uri>
</namespace>
    }

  }

}
