package sit.int202.classicmodels.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@NamedQuery(name = "Office.FIND_BY_CITY_OR_COUNTRY", query = "select o from Office o where lower(o.city) like :city or lower(o.country) like :country")
@Getter
@Setter
@Entity
@Table(name = "Offices")
public class Office {
    @Id
    private String officeCode;
    private String addressLine1;
    private String addressLine2;
    private String city;
    private String state;
    private String country;
    private String postalCode;
    private String phone;
    private String territory;
}
