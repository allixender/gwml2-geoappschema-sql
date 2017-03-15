package io.allixender

import com.typesafe.scalalogging.LazyLogging

import scala.xml._

object SchemaLoader extends LazyLogging {

  // geoserver stuff
  lazy val AppSchemaDataAccess = XML.load(getClass.getResource("/AppSchemaDataAccess.xsd"))
  lazy val AppSchemaProperties = XML.load(getClass.getResource("/app-schema.properties"))

  // lazy val gwml2 = XML.load(getClass.getResource("gwml2.xsd"))
  lazy val MainSchema = XML.load(getClass.getResource("/gwml2-main.xsd"))
  lazy val FlowSchema = XML.load(getClass.getResource("/gwml2-flow.xsd"))
  lazy val ConstituentSchema = XML.load(getClass.getResource("/gwml2-constituent.xsd"))
  lazy val WellSchema = XML.load(getClass.getResource("/gwml2-well.xsd"))
  lazy val WellConstructionSchema = XML.load(getClass.getResource("/gwml2-wellconstruction.xsd"))
  lazy val AquifertestSchema = XML.load(getClass.getResource("/gwml2-aquifertest.xsd"))

  // controlled terms
  lazy val AquiferTypeTerm = XML.load(getClass.getResource("/AquiferTypeTerm.xml"))
  lazy val bholeInclinationTypeTerm = XML.load(getClass.getResource("/bholeInclinationTypeTerm.xml"))
  lazy val bholeStartPointTypeTerm = XML.load(getClass.getResource("/bholeStartPointTypeTerm.xml"))
  lazy val BodyQualityTerm = XML.load(getClass.getResource("/BodyQualityTerm.xml"))
  lazy val ChemicalTypeTerm = XML.load(getClass.getResource("/ChemicalTypeTerm.xml"))
  lazy val ConductivityConfinementTypeTerm = XML.load(getClass.getResource("/ConductivityConfinementTypeTerm.xml"))
  lazy val ConstituentRelationMechanismTypeTerm = XML.load(getClass.getResource("/ConstituentRelationMechanismTypeTerm.xml"))
  lazy val ConstituentRelationTypeTerm = XML.load(getClass.getResource("/ConstituentRelationTypeTerm.xml"))
  lazy val ElevationTypeTerm = XML.load(getClass.getResource("/ElevationTypeTerm.xml"))
  lazy val EnvironmentalDomainTypeTerm = XML.load(getClass.getResource("/EnvironmentalDomainTypeTerm.xml"))
  lazy val FlowPersistenceTypeTerm = XML.load(getClass.getResource("/FlowPersistenceTypeTerm.xml"))
  lazy val HeadworkTypeTerm = XML.load(getClass.getResource("/HeadworkTypeTerm.xml"))
  lazy val MixtureTypeTerm = XML.load(getClass.getResource("/MixtureTypeTerm.xml"))
  lazy val OrganismTypeTerm = XML.load(getClass.getResource("/OrganismTypeTerm.xml"))
  lazy val PorosityTypeTerm = XML.load(getClass.getResource("/PorosityTypeTerm.xml"))
  lazy val SiteTypeTerm = XML.load(getClass.getResource("/SiteTypeTerm.xml"))
  lazy val SpatialConfinementTypeTerm = XML.load(getClass.getResource("/SpatialConfinementTypeTerm.xml"))
  lazy val SpecialisedZoneAreaTypeTerm = XML.load(getClass.getResource("/SpecialisedZoneAreaTypeTerm.xml"))
  lazy val SpringCauseTypeTerm = XML.load(getClass.getResource("/SpringCauseTypeTerm.xml"))
  lazy val SpringConstructionTypeTerm = XML.load(getClass.getResource("/SpringConstructionTypeTerm.xml"))
  lazy val SpringPersistenceTerm = XML.load(getClass.getResource("/SpringPersistenceTerm.xml"))
  lazy val SpringTypeTerm = XML.load(getClass.getResource("/SpringTypeTerm.xml"))
  lazy val StateTypeTerm = XML.load(getClass.getResource("/StateTypeTerm.xml"))
  lazy val SurfaceTypeTerm = XML.load(getClass.getResource("/SurfaceTypeTerm.xml"))
  lazy val WaterFlowProcessTerm = XML.load(getClass.getResource("/WaterFlowProcessTerm.xml"))
  lazy val WaterWellUseTypeTerm = XML.load(getClass.getResource("/WaterWellUseTypeTerm.xml"))
  lazy val WellPurposeTerm = XML.load(getClass.getResource("/WellPurposeTerm.xml"))
  lazy val WellStatusTypeTerm = XML.load(getClass.getResource("/WellStatusTypeTerm.xml"))

  /**
    *
    * @return
    */
  def schemaList: Seq[NodeSeq] = {
    Seq(
      MainSchema, FlowSchema, ConstituentSchema, WellSchema, WellConstructionSchema, AquifertestSchema
    )
  }

  /**
    *
    * @return
    */
  def termList: Seq[NodeSeq] = {
    Seq(
      AquiferTypeTerm,
      bholeInclinationTypeTerm,
      bholeStartPointTypeTerm,
      BodyQualityTerm,
      ChemicalTypeTerm,
      ConductivityConfinementTypeTerm,
      ConstituentRelationMechanismTypeTerm,
      ConstituentRelationTypeTerm,
      ElevationTypeTerm,
      EnvironmentalDomainTypeTerm,
      FlowPersistenceTypeTerm,
      HeadworkTypeTerm,
      MixtureTypeTerm,
      OrganismTypeTerm,
      PorosityTypeTerm,
      SiteTypeTerm,
      SpatialConfinementTypeTerm,
      SpecialisedZoneAreaTypeTerm,
      SpringCauseTypeTerm,
      SpringConstructionTypeTerm,
      SpringPersistenceTerm,
      SpringTypeTerm,
      StateTypeTerm,
      SurfaceTypeTerm,
      WaterFlowProcessTerm,
      WaterWellUseTypeTerm,
      WellPurposeTerm,
      WellStatusTypeTerm
    )
  }

  /**
    *
    * @param dict
    * @return
    */
  def getTermsFromDictionary(dict: NodeSeq) : Seq[String] = {
    val headelem = (dict \\ "Dictionary").head
    val entries = (headelem \ "dictionaryEntry" \ "Definition" \ "name").map(e => e.text)
    entries
  }

  /**
    * @param xml
    * @return
    */
  def getDictionary(xml: NodeSeq) : GmlDictionary = {
    val headelem = (xml \\ "Dictionary").head
    val gmlId = extractPrefixedAtrrib(headelem.attributes, "gml:id")
    val identifier = (headelem \ "identifier").headOption.map{
      elem =>
        if (elem.text.nonEmpty) Some(elem.text) else None
    }.getOrElse(None)
    val codespace = (headelem \ "identifier").headOption.map(x => extractAttrib(x.attributes, "codespace")).getOrElse(None)
    val name = (headelem \ "name").text
    val entries = (headelem \ "dictionaryEntry").map(getEntry(_))
    GmlDictionary(gmlId, identifier,codespace,name,entries)
  }

  /**
    *
    * @param xml
    * @return
    */
  def getEntry(xml: NodeSeq) : GmlDictionaryEntry = {
    val gmlId = (xml \\ "Definition" ).headOption.map {
      elem =>
        extractPrefixedAtrrib(elem.attributes, "gml:id")
    }.headOption.getOrElse("")

    val description: Option[String] = (xml \ "description").headOption.map{
      x => if (x.text.nonEmpty) Some(x.text) else None
    }.getOrElse(None)
    val identifier = (xml \\ "Definition" \ "identifier").text
    val codespace = (xml \\ "Definition" \ "identifier").headOption.map(x => extractAttrib(x.attributes, "codespace")).getOrElse(None)
    val name = (xml \\ "Definition" \ "identifier").text
    GmlDictionaryEntry(gmlId,description,identifier,codespace,name)
  }

    /**
      *
      * @param attrs
      * @param prefixedLabel
      * @return
      */
    def extractPrefixedAtrrib(attrs: Iterable[MetaData], prefixedLabel: String): String = {
      val attOpt = attrs.find(meta => meta.prefixedKey.equalsIgnoreCase(prefixedLabel))
      attOpt.map(meta => meta.value.text).getOrElse("")
    }

    /**
      *
      * @param attrs
      * @param label
      * @return
      */
    def extractAttrib(attrs: Iterable[MetaData], label: String): Option[String] = {
      val attOpt = attrs.find(meta => meta.key.equalsIgnoreCase(label))
      val text = attOpt.map(meta => meta.value.text).getOrElse("")
      if (text.nonEmpty) Some(text) else None
    }


}
