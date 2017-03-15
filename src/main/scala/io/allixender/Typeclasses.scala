package io.allixender

import com.typesafe.scalalogging.LazyLogging

class TypeClasses extends LazyLogging {

}

case class GmlDictionary(
                          gmlId: String,
                          identifier: Option[String],
                          codeSpace: Option[String],
                          name: String,
                          entries: Seq[GmlDictionaryEntry]
                        )

case class GmlDictionaryEntry(
                               gmlId: String,
                               description: Option[String],
                               identifier: String,
                               codeSpace: Option[String],
                               name: String
                             )