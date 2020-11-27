package aspera.registration.model;

import javax.persistence.*;

import java.util.Collection;


@Entity
@Table(name="booking")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long bid;
    private Long id;
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String mobile;
    private String destination;
    private String location;
    private String accomodation;
    private String person;
    private String checkin;
    private String checkout;
    
	@ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinTable( name = "user_roles",
                joinColumns = @JoinColumn(name = "user_id", referencedColumnName = "bid"),
                inverseJoinColumns = @JoinColumn(name = "role_id", referencedColumnName = "id"))

    private Collection<Role> roles;

    public User(String firstName, String lastName, String email, String password, String mobile, String destination, String location, String accomodation, String person, String checkin,String checkout) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.mobile = mobile;
        this.destination = destination;
        this.location = location;
        this.accomodation = accomodation;
        this.person = person;
        this.checkin = checkin;
        this.checkout = checkout;
        

    }
    
    
    
    

    public User(String firstName, String lastName, String email, String password,  String mobile, String destination, String location, String accomodation, String person,String checkin,String checkout,Collection<Role> roles) {

        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.roles = roles;
        this.mobile = mobile;
        this.destination = destination;
        this.location = location;
        this.accomodation = accomodation;
        this.person = person;
        this.checkin = checkin;
        this.checkout = checkout;

    }

    public String getAccomodation() {
		return accomodation;
	}

	public void setAccomodation(String accomodation) {
		this.accomodation = accomodation;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    

    public String getCheckin() {
		return checkin;
	}

	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}

	public String getCheckout() {
		return checkout;
	}

	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}
	
	   public String getPerson() {
			return person;
		}

		public void setPerson(String person) {
			this.person = person;
		}

	public Collection<Role> getRoles() {
        return roles;
    }

    public void setRoles(Collection<Role> roles) {
        this.roles = roles;
    }
    
    

    public Long getBid() {
		return bid;
	}





	public void setBid(Long bid) {
		this.bid = bid;
	}





	public Long getId() {
		return id;
	}





	public void setId(Long id) {
		this.id = id;
	}





	public User() {
    }





	@Override
	public String toString() {
		return "User [bid=" + bid + ", id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", email="
				+ email + ", password=" + password + ", mobile=" + mobile + ", destination=" + destination
				+ ", location=" + location + ", accomodation=" + accomodation + ", person=" + person + ", checkin="
				+ checkin + ", checkout=" + checkout + ", roles=" + roles + "]";
	}

	
    
    
    
}