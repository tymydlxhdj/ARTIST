/*******************************************************************************
 * File generated from the petstore-app::org::agoncal::application::petstore::service::OrderLineService uml Class
 * Generated by the Acceleo 3 <i>UML to Java</i> generator.
 * Date: 17. Juni 2014 20:36:38 MESZ
 *******************************************************************************/
package org.agoncal.application.petstore.service;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.util.List;
import org.agoncal.application.petstore.domain.OrderLine;
// Start of user code (user defined imports)

// End of user code

/**
 * Description of OrderLineService.
 * 
 * @author 
 */
/**
 * Service class of OrderLineService entity.
 *
 * @author 
 */
public class OrderLineService {
	/**
	 * Description of the method createOrderLine.
	 * @param entityToCreate 
	 * @return 
	 */
	 public OrderLine createOrderLine( OrderLine entityToCreate) {
		if (entityToCreate != null) {
			// TODO: Provide business logic if required
			// finally the entity is stored - synchronous approach
			ofy().save().entity(entityToCreate).now();
		} else {
	
			// TODO: Exception handling if the entity is null
		}
	
		return entityToCreate;
	  }
	
	/**
	  * Description of the method findOrderLine.
	  * @param entityId 
	  * @return 
	  */
	  public OrderLine findOrderLine( long entityId) {
		return ofy().load().type(OrderLine.class).filter("id", entityId).first().now();
	  }
	
	/**
	   * Description of the method findAllOrderLine.
	   * @return 
	   */
	   public List<OrderLine> findAllOrderLine() {
		return ofy().load().type(OrderLine.class).list();
	  }
	
	/**
	    * Description of the method updateOrderLine.
	    * @param entityToUpdate 
	    * @return 
	    */
	    public OrderLine updateOrderLine( OrderLine entityToUpdate) {
		if (entityToUpdate != null) {
			// TODO: Provide business logic if required
			// finally the entity is stored - synchronous approach
			ofy().save().entity(entityToUpdate).now();
		} else {
	
			// TODO: Exception handling if the entity is null
		}
	
		return entityToUpdate;
	  }
	
	/**
	     * Description of the method removeOrderLine.
	     * @param entityToRemove 
	     */
	     public void removeOrderLine( OrderLine entityToRemove) {
		if (entityToRemove != null) {
			// TODO: Provide business logic if required
			// finally the entity is stored - synchronous approach
			ofy().delete().type(OrderLine.class).id(entityToRemove.getId()).now();
		} else {
	
			// TODO: Exception handling if the entity is null
		}
	  }


}
