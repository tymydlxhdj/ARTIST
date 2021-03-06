/*
* generated by Xtext
*/
package eu.artist.postmigration.nfrvt.lang.gel.ui.labeling

import com.google.inject.Inject
import eu.artist.postmigration.nfrvt.lang.common.ui.labeling.ARTISTCommonLabelProvider
import eu.artist.postmigration.nfrvt.lang.gel.renderer.GELTextRenderer
import eu.artist.postmigration.nfrvt.lang.gel.ui.internal.GELActivator

/**
 * Provides labels for a EObjects.
 * 
 * see http://www.eclipse.org/Xtext/documentation.html#labelProvider
 */
class GELLabelProvider extends ARTISTCommonLabelProvider {

	@Inject
	new(org.eclipse.emf.edit.ui.provider.AdapterFactoryLabelProvider delegate) {
		super(delegate, new GELTextRenderer(), GELActivator.getInstance);
	}
}
