package io.allixender

import com.typesafe.scalalogging.LazyLogging
import scala.xml.NamespaceBinding
import scala.xml._

object WorkSpaceBuilder extends LazyLogging {

  /**
    *
    * @param ns
    * @return
    */
  def workspaceXmlTemplate(ns: NamespaceBinding) : NodeSeq = {

    XML.loadString(
      s"""<workspace>
         |  <id>${ns.prefix}_workspace</id>
         |  <name>${ns.prefix}</name>
         |</workspace>
         |
       """.stripMargin)
  }

  /**
    *
    * @param ns
    * @return
    */
  def namespaceXmlTemplate(ns: NamespaceBinding) : NodeSeq = {

    XML.loadString(s"""<namespace>
                |  <id>${ns.prefix}_namespace</id>
                |  <prefix>${ns.prefix}</prefix>
                |  <uri>${ns.uri}</uri>
                |</namespace>
       |""".stripMargin)
  }

  /**
    *
    * @param id "postgisng_gwml2"
    * @param dbtype "postgisng"
    * @param jndiReferenceName "jdbc/postgisng_gwml2"
    * @return
    */
  def datastoreTemplate(id: String, dbtype: String, jndiReferenceName: String) : NodeSeq = {
    XML.loadString(
      s"""<DataStore>
         |    <id>${id}</id>
         |    <parameters>
         |        <Parameter>
         |            <name>dbtype</name>
         |            <value>${dbtype}</value>
         |        </Parameter>
         |        <Parameter>
         |            <name>jndiReferenceName</name>
         |            <value>${jndiReferenceName}</value>
         |        </Parameter>
         |    </parameters>
         |</DataStore>
       """.stripMargin)
  }

}
