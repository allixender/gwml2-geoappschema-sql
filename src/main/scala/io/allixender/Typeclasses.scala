package io.allixender

import com.typesafe.scalalogging.LazyLogging

import scala.xml.{NamespaceBinding}

object TypeClasses extends LazyLogging {

  def getQName = ???

  def compareQNames = ???
}

/**
  *
  * @param gmlId
  * @param identifier
  * @param codeSpace
  * @param name
  * @param entries
  */
case class GmlDictionary(
                          gmlId: String,
                          identifier: Option[String],
                          codeSpace: Option[String],
                          name: String,
                          entries: Seq[GmlDictionaryEntry]
                        )

/**
  *
  * @param gmlId
  * @param description
  * @param identifier
  * @param codeSpace
  * @param name
  */
case class GmlDictionaryEntry(
                               gmlId: String,
                               description: Option[String],
                               identifier: String,
                               codeSpace: Option[String],
                               name: String
                             )

/**
  *
  * @param name
  * @param version
  * @param targetNamespace
  * @param annotation
  * @param nsImports
  * @param complexTypes
  * @param complexPropertyTypes
  * @param simpleTypes
  * @param simplePropertyTypes
  * @param instanceElements
  */
case class Schema (
                  name: String,
                  version: String,
                  targetNamespace: NamespaceBinding,
                  annotation: Option[String],
                  nsImports: Seq[NamespaceBinding],
                  complexTypes: Seq[ComplexType],
                  complexPropertyTypes: Seq[ComplexPropertyType],
                  simpleTypes: Seq[SimpleType],
                  simplePropertyTypes: Seq[SimplePropertyType],
                  instanceElements: Seq[Element]
                  )

/**
  *
  * @param name
  * @param ns
  * @param isAbstract
  * @param extensionBase
  * @param elements
  */
case class ComplexType(
                      name: String,
                      ns: NamespaceBinding,
                      isAbstract: Option[Boolean],
                      extensionBase: Option[String],
                      elements: Seq[Element],
                      complexAttribute: Option[ComplexAttribute]
                      )

/**
  *
  * @param name
  * @param elementRef
  * @param minOccurs
  * @param attributeGroupRef "gml:AssociationAttributeGroup" or "gml:OwnershipAttributeGroup"
  */
case class ComplexPropertyType (
                               name: String,
                               elementRef: String,
                               minOccurs: Option[Int],
                               attributeGroupRef: Option[String],
                               complexAttribute: Option[ComplexAttribute]
                               )

/**
  *
  * @param name
  * @param ns
  * @param annotation
  * @param gmlDictionaryType
  */
case class SimpleType(
                       name: String,
                       ns: NamespaceBinding,
                       annotation: Option[String],
                       gmlDictionaryType: Option[GmlDictionary]
                     )

/**
  *
  * @param name
  * @param attributeType
  */
case class ComplexAttribute (
                            name: String,
                            attributeType: String
                            )

case class SimplePropertyType (

                              )

/**
  *
  * @param name
  * @param ns
  * @param substitutionGroup
  * @param isAbstract
  * @param nillable
  * @param minOccurs
  * @param maxOccurs
  * @param annotation
  */
case class Element(
                    name: String,
                    ns: NamespaceBinding,
                    substitutionGroup: Option[String],
                    isAbstract: Option[Boolean],
                    nillable: Option[Boolean],
                    minOccurs: Option[Int],
                    maxOccurs: Option[Int],
                    annotation: Option[String],
                    complexPropertyType: ComplexPropertyType
                  )

case class QTypeName (
                      label: String,
                      ns: NamespaceBinding
                    )
