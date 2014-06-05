/*
 * generated by Xtext
 */
package eu.artist.postmigration.nfrvt.lang.tsl.validation

import org.eclipse.xtext.validation.Check
import eu.artist.postmigration.nfrvt.lang.tsl.tsl.Pattern
import eu.artist.postmigration.nfrvt.lang.tsl.tsl.TslPackage

//import org.eclipse.xtext.validation.Check

/**
 * Custom validation rules. 
 *
 * see http://www.eclipse.org/Xtext/documentation.html#validation
 */
class TSLValidator extends AbstractTSLValidator {

//  public static val INVALID_NAME = 'invalidName'
//
	@Check
	def checkQualitativePropertySubProperties(Pattern pattern) {
		pattern.patternImpacts.forEach[i | 
			val nr = pattern.patternImpacts.filter[si | i.target.name.equals(si.target.name)].size
			if(nr > 1)
				error("Pattern " + i.target.name + " has " + nr + " impacts defined within the same pattern.", TslPackage.Literals.PATTERN__PATTERN_IMPACTS)
		]
		
		pattern.propertyImpacts.forEach[i | 
			val nr = pattern.propertyImpacts.filter[si | i.target.name.equals(si.target.name)].size
			if(nr > 1)
				error("Property " + i.target.name + " has " + nr + " impacts defined within the same pattern.", TslPackage.Literals.PATTERN__PROPERTY_IMPACTS)
		]
		
		pattern.relatedPatterns.forEach[i | 
			val nr = pattern.relatedPatterns.filter[si | i.name.equals(si.name)].size
			if(nr > 1)
				error("Pattern " + i.name + " is defined " + nr + " times as related pattern.", TslPackage.Literals.PATTERN__RELATED_PATTERNS)
		]
	}
}
