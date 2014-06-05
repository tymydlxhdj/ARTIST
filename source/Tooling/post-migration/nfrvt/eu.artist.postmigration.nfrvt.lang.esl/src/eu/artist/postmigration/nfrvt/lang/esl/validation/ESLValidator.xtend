/*
 * generated by Xtext
 */
package eu.artist.postmigration.nfrvt.lang.esl.validation

import org.eclipse.xtext.validation.Check
import eu.artist.postmigration.nfrvt.lang.esl.esl.EvaluationStrategy
import eu.artist.postmigration.nfrvt.lang.esl.esl.EslPackage

//import org.eclipse.xtext.validation.Check

/**
 * Custom validation rules. 
 *
 * see http://www.eclipse.org/Xtext/documentation.html#validation
 */
class ESLValidator extends AbstractESLValidator {

//  public static val INVALID_NAME = 'invalidName'
//
	@Check
	def checkStrategyEvaluations(EvaluationStrategy s) {
		s.properties.forEach[p | 
			val nr = s.properties.filter[sub | p.name.equals(sub.name)].size
			if(nr > 1)
				error("Property " + p.name + " is specified " + nr + " times.", EslPackage.Literals.EVALUATION_STRATEGY__PROPERTIES)
		]
	}
}
