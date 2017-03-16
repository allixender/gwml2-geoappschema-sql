package io.allixender

import com.typesafe.scalalogging.LazyLogging
import org.scalatest.{Matchers, WordSpec}

class SchemaLoaderSpec extends WordSpec with Matchers with LazyLogging {

  "SchemaLoader" should {

    lazy val testDict = GmlDictionary("StateTypeTerm", None, None, "StateTypeTerm",
      List(
        GmlDictionaryEntry("gas", None, "gas", None, "gas"),
        GmlDictionaryEntry("liquid", None, "liquid", None, "liquid"),
        GmlDictionaryEntry("solid", None, "solid", None, "solid")))

    "load gwml2 schemas " in {
      val x = SchemaLoader.schemaList
      x.size shouldBe 6
    }

    "load gwml2 terms " in {
      val x = SchemaLoader.termList
      x.size shouldBe 28
    }

    "get list of terms from dict" in {
      val t = Seq("gas", "liquid", "solid")
      SchemaLoader.getTermsFromDictionary(StateTypeTerm) shouldEqual t
    }

    "get dict class with entries as case class" in {
      val dict = SchemaLoader.getDictionary(StateTypeTerm)
      logger.debug(dict.toString)
      dict.entries.size shouldBe 3
      dict.name shouldBe "StateTypeTerm"
      testDict shouldEqual dict
    }

    "get all dicts as case class" in {
      val dictSeq = SchemaLoader.getAllDictionaries
      dictSeq.size shouldBe 28
      val allTerms: Seq[GmlDictionaryEntry] = dictSeq.map(dict => dict.entries).flatten
      allTerms.size shouldBe 7
      allTerms.exists(t => t.name.equals("liquid")) shouldBe true
    }

    "get target namespaces" in {
      val ns = SchemaLoader.getSchemaAttributes(MainSchema)
      ns.headOption shouldBe defined
      ns.head.uri shouldEqual "http://www.opengis.net/gwml-main/2.2"

      val nsSeq = SchemaLoader.getAllSchemaAttributes
      nsSeq.foreach(ns => logger.info(s"${ns.toString()}"))
      nsSeq.size shouldBe 6
    }

    "get prefix for uri" in {
      SchemaLoader.getPrefixForUri(Some("http://www.opengis.net/gml/3.2")) shouldEqual Some("gml")
      SchemaLoader.getPrefixForUri(Some("http://xmlns.geosciml.org/GeoSciML-Basic/4.0")) shouldEqual Some("gsml")
    }

    "get imported namespaces" in {
      val ns = SchemaLoader.getImportedNamespaces(WellSchema)
      ns.size shouldBe 9
      ns.exists(_.uri.equals("http://www.opengis.net/gml/3.2")) shouldEqual true

      val nsSeq = SchemaLoader.getAllImportedNamespaces
      nsSeq.foreach(ns => logger.info(s"${ns.toString()}"))

      nsSeq.size shouldBe 11
    }

  }

}
