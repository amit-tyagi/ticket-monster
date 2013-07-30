package org.jboss.jdf.example.ticketmonster.rest;

import javax.ejb.Stateless;
import javax.ws.rs.Path;

import org.jboss.jdf.example.ticketmonster.model.Venue;

/**
 * <p>
 *     A JAX-RS endpoint for handling {@link org.jboss.jdf.example.ticketmonster.model.Venue}s. Inherits the actual
 *     methods from {@link org.jboss.jdf.example.ticketmonster.rest.BaseEntityService}.
 * </p>
 *
 * @author Marius Bogoevici
 */
@Path("/venues")
/**
 * <p>
 *     This is a stateless service, we declare it as an EJB for transaction demarcation
 * </p>
 */
@Stateless
public class VenueService extends BaseEntityService<Venue> {

    public VenueService() {
        super(Venue.class);
    }

}