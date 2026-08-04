package com.dto;


public class BookingDetails {

    private Integer bookingId;

    private String customerName;

    private String organizerName;

    private String eventType;

    private String venueName;

    private String bookingDate;

    private String eventDate;

    private Integer guestCount;

    private Double budget;

    private String status;

    private String specialRequest;

    // ================= Getters & Setters =================

    public Integer getBookingId() {
        return bookingId;
    }

    public void setBookingId(Integer bookingId) {
        this.bookingId = bookingId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getOrganizerName() {
        return organizerName;
    }

    public void setOrganizerName(String organizerName) {
        this.organizerName = organizerName;
    }

    public String getEventType() {
        return eventType;
    }

    public void setEventType(String eventType) {
        this.eventType = eventType;
    }

    public String getVenueName() {
        return venueName;
    }

    public void setVenueName(String venueName) {
        this.venueName = venueName;
    }

    public String getBookingDate() {
        return bookingDate;
    }

    public void setBookingDate(String bookingDate) {
        this.bookingDate = bookingDate;
    }

    public String getEventDate() {
        return eventDate;
    }
 
    public void setEventDate(String eventDate) {
        this.eventDate = eventDate;
    }

    public Integer getGuestCount() {
        return guestCount;
    }

    public void setGuestCount(Integer guestCount) {
        this.guestCount = guestCount;
    }
    
    public Double getBudget() {
        return budget;
    }

    public void setBudget(Double budget) {
        this.budget = budget;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getSpecialRequest() {
        return specialRequest;
    }

    public void setSpecialRequest(String specialRequest) {
        this.specialRequest = specialRequest;
    }

    @Override
    public String toString() {
        return "BookingDetails [bookingId=" + bookingId +
                ", customerName=" + customerName +
                ", organizerName=" + organizerName +
                ", eventType=" + eventType +
                ", venueName=" + venueName +
                ", bookingDate=" + bookingDate +
                ", eventDate=" + eventDate +
                ", guestCount=" + guestCount +
                ", budget=" + budget +
                ", status=" + status +
                ", specialRequest=" + specialRequest + "]";
    }

}
