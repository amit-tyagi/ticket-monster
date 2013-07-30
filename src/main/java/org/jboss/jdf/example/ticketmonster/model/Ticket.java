package org.jboss.jdf.example.ticketmonster.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import java.io.Serializable;

import static javax.persistence.GenerationType.IDENTITY;

/**
 * <p>
 * A ticket represents a seat sold for a particular price.
 * </p>
 *
 * @author Shane Bryzak
 * @author Marius Bogoevici
 * @author Pete Muir
 */
/*
 * We suppress the warning about not specifying a serialVersionUID, as we are still developing this app, and want the JVM to
 * generate the serialVersionUID for us. When we put this app into production, we'll generate and embed the serialVersionUID
 */
@SuppressWarnings("serial")
@Entity
public class Ticket implements Serializable {

    /* Declaration of fields */

    /**
     * The synthetic id of the object.
     */
    @Id
    @GeneratedValue(strategy = IDENTITY)
    private Long id;

    /**
     * <p>
     * The ticket price category for which this ticket has been sold.
     * </p>
     * <p/>
     * <p>
     * The ticket price category must be specifed, and the Bean Validation constraint <code>@NotNull</code> ensures this.
     * </p>
     */
    @ManyToOne
    private TicketCategory ticketCategory;

    /**
     * The price which was charged for the ticket.
     */
    private float price;

    /**
     * No-arg constructor for persistence
     */
    public Ticket() {

    }

    public Ticket(TicketCategory ticketCategory, float price) {
        this.ticketCategory = ticketCategory;
        this.price = price;
    }

    /* Boilerplate getters and setters */

    public Long getId() {
        return id;
    }

    public TicketCategory getTicketCategory() {
        return ticketCategory;
    }

    public float getPrice() {
        return price;
    }

    @Override
    public String toString() {
        return getPrice() + " (" + getTicketCategory() + ")";
    }
}
