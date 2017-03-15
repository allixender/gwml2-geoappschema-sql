package io.allixender

import com.typesafe.scalalogging.LazyLogging
import org.scalatest.{Matchers, WordSpec}
import org.scalatest.Matchers._

import scala.io.Source
import scala.xml._

class SchemaLoaderSpec extends WordSpec with Matchers with LazyLogging {

  "SchemaLoader" should {

    lazy val testDict = GmlDictionary("StateTypeTerm",None,None,"StateTypeTerm",
      List(
        GmlDictionaryEntry("gas",None,"gas",None,"gas"),
        GmlDictionaryEntry("liquid",None,"liquid",None,"liquid"),
        GmlDictionaryEntry("solid",None,"solid",None,"solid")))

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
      SchemaLoader.getTermsFromDictionary(SchemaLoader.StateTypeTerm) shouldEqual t
    }

    "get dict class with entries as case class" in {
      val dict = SchemaLoader.getDictionary(SchemaLoader.StateTypeTerm)
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

    "get all namespace" in {
      val nsSeq = SchemaLoader.findAllSchemaNamespaces
      nsSeq.size shouldBe 6
    }

  }

}
