package org.jboss.jdf.example.ticketmonster.rest;

import org.jboss.jdf.example.ticketmonster.model.Event;

import javax.ejb.Stateless;
import javax.ws.rs.Path;

/**
 * <p>
 *     A JAX-RS endpoint for handling {@link org.jboss.jdf.example.ticketmonster.model.Venue}s. Inherits the actual
 *     methods from {@link BaseEntityService}.
 * </p>
 *
 * @author Marius Bogoevici
 */
@Path("/events")
/**
 * <p>
 *     This is a stateless service, we declare it as an EJB for transaction demarcation
 * </p>
 */
@Stateless
public class EventService extends BaseEntityService<Event> {

    public EventService() {
        super(Event.class);
    }

}