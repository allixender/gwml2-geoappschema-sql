package io

import scala.xml.{NamespaceBinding, XML}

package object allixender {

  lazy val xmlnsUri = "http://www.w3.org/2001/XMLSchema"
  lazy val xmlNamespace = NamespaceBinding("xmlns", "http://www.w3.org/2001/XMLSchema", null)

  lazy val nsGml32 = NamespaceBinding("gml", "http://www.opengis.net/gml/3.2", null)
  lazy val nsGmd2005 = NamespaceBinding("gmd", "http://www.isotc211.org/2005/gmd", null)
  lazy val nsGco2005 = NamespaceBinding("gco", "http://www.isotc211.org/2005/gco", null)
  lazy val nsOm20 = NamespaceBinding("om", "http://www.opengis.net/om/2.0", null)
  lazy val nsSwe20 = NamespaceBinding("swe", "http://www.opengis.net/swe/2.0", null)
  lazy val nsSams = NamespaceBinding("sams", "http://www.opengis.net/samplingSpatial/2.0", null)
  lazy val nsGsml40 = NamespaceBinding("gsml", "http://xmlns.geosciml.org/GeoSciML-Basic/4.0", null)
  lazy val nsGwml2 = NamespaceBinding("gwml2", "http://www.opengis.net/gwml-main/2.2", null)
  lazy val nsGwml2f = NamespaceBinding("gwml2f", "http://www.opengis.net/gwml-flow/2.2", null)
  lazy val nsGwml2c = NamespaceBinding("gwml2c", "http://www.opengis.net/gwml-constituent/2.2", null)
  lazy val nsGwml2w = NamespaceBinding("gwml2w", "http://www.opengis.net/gwml-well/2.2", null)
  lazy val nsGwml2wc = NamespaceBinding("gwml2wc", "http://www.opengis.net/gwml-wellconstruction/2.2", null)
  lazy val nsGwml2at = NamespaceBinding("gwml2at", "http://www.opengis.net/gwml-aquifertest/2.2", null)

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
}
