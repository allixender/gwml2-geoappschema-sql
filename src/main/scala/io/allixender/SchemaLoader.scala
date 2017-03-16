package io.allixender

import com.typesafe.scalalogging.LazyLogging

import scala.xml._

object SchemaLoader extends LazyLogging {

  /**
    *
    * @param dict
    * @return
    */
  def getTermsFromDictionary(dict: NodeSeq): Seq[String] = {
    val headelem = (dict \\ "Dictionary").head
    val entries = (headelem \ "dictionaryEntry" \ "Definition" \ "name").map(e => e.text)
    entries
  }

  /**
    *
    * @return
    */
  def getAllDictionaries: Seq[GmlDictionary] = {
    termList.map(xmlDict => getDictionary(xmlDict))
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
    * @param xml
    * @return
    */
  def getDictionary(xml: NodeSeq): GmlDictionary = {
    val headelem = (xml \\ "Dictionary").head
    val gmlId = extractPrefixedAtrrib(headelem.attributes, "gml:id")
    val identifier = (headelem \ "identifier").headOption.map {
      elem =>
        if (elem.text.nonEmpty) Some(elem.text) else None
    }.getOrElse(None)
    val codespace = (headelem \ "identifier").headOption.map(x => extractAttrib(x.attributes, "codespace")).getOrElse(None)
    val name = (headelem \ "name").text
    val entries = (headelem \ "dictionaryEntry").map(getEntry(_))
    GmlDictionary(gmlId, identifier, codespace, name, entries)
  }

  /**
    *
    * @param xml
    * @return
    */
  def getEntry(xml: NodeSeq): GmlDictionaryEntry = {
    val gmlId = (xml \\ "Definition").headOption.map {
      elem =>
        extractPrefixedAtrrib(elem.attributes, "gml:id")
    }.headOption.getOrElse("")

    val description: Option[String] = (xml \ "description").headOption.map {
      x => if (x.text.nonEmpty) Some(x.text) else None
    }.getOrElse(None)
    val identifier = (xml \\ "Definition" \ "identifier").text
    val codespace = (xml \\ "Definition" \ "identifier").headOption.map(x => extractAttrib(x.attributes, "codespace")).getOrElse(None)
    val name = (xml \\ "Definition" \ "identifier").text
    GmlDictionaryEntry(gmlId, description, identifier, codespace, name)
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
    * @return
    */
  def getAllSchemaAttributes: Seq[NamespaceBinding] = {
    schemaList.flatMap(xsd => getSchemaAttributes(xsd)).distinct
  }

  /**
    *
    * @return
    */
  def getAllImportedNamespaces: Seq[NamespaceBinding] = {
    schemaList.flatMap(xsd => getImportedNamespaces(xsd)).distinct
  }

  /**
    *
    * @return
    */
  def schemaList: Seq[NodeSeq] = {
    Seq(
      MainSchema, FlowSchema, ConstituentSchema, WellSchema, WellConstructionSchema, AquifertestSchema
    )
  }

  def namespacesList: Seq[NamespaceBinding] = {
    Seq(
      nsGco2005, nsGmd2005, nsGml32, nsGsml40,
      nsGwml2, nsGwml2f, nsGwml2c, nsGwml2w, nsGwml2wc, nsGwml2at,
      nsOm20, nsSwe20, nsSams
    )
  }

  /**
    *
    * @param xml
    * @return
    */
  def getImportedNamespaces(xml: NodeSeq): Seq[NamespaceBinding] = {
    (xml \\ "schema" \ "import").map {
      node =>
        val link = extractAttrib(node.attributes, "namespace")
        logger.trace(s"link before: $link")
        if (link.isDefined) {
          val targetPrefix = getPrefixForUri(link)
          logger.debug(s"ns: ${targetPrefix.get}, ${link.get}, null")
          Some(NamespaceBinding(targetPrefix.getOrElse(null), link.get, null))
        } else {
          None
        }
    }.filter(_.isDefined).map(_.get)
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

  /**
    *
    * @param xml
    * @return
    */
  def getSchemaAttributes(xml: NodeSeq): Seq[NamespaceBinding] = {
    val headelem = (xml \\ "schema").head

    val nsSeq = headelem.flatMap {
      node =>
        node.attributes.flatMap {
          meta =>
            meta.asAttrMap
        }
    }.flatMap {
      case ("version", v) => {
        logger.trace(s"version: $v")
        None
      }
      case ("attributeFormDefault", v) => {
        logger.trace(s"attributeFormDefault: $v")
        None
      }
      case ("elementFormDefault", v) => {
        logger.trace(s"elementFormDefault: $v")
        None
      }
      case ("targetNamespace", v) => {
        logger.trace(s"targetNamespace: $v")
        Some(NamespaceBinding(getPrefixForUri(Some(v)).getOrElse("targetNamespace"), v, null))
      }
      case _ => None
    }
    nsSeq.distinct
  }

  /**
    *
    * @param uri
    * @return
    */
  def getPrefixForUri(uri: Option[String]): Option[String] = {
    if (uri.isDefined) {
      namespacesList.find(_.uri == uri.get).map(_.prefix)
    } else {
      None
    }
  }

  def findAllTypes = ???

}
