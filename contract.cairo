// registration information for an EPIRB or PLB
struct RegistrationInfo:
    beacon_id: felt        // 15-Hex Beacon ID
    owner: felt            // owner's address or identifier
    registration_date: felt  // date of registration
    checksum: felt         // checksum (CHK)
    serial_no: felt        // serial No. (S/N)
    manufacturer: felt     // EPIRB manufacturer
    model: felt            // EPIRB model
    purpose: felt          // purpose of EPIRB registration
    owner_info: felt       // owner/operator information entry
    vessel_info: felt      // vessel information entry
    emergency_contact_info: felt  // emergency contact information entry

storage:
    registrations: map(felt, RegistrationInfo)

// function to register a new EPIRB or PLB
@public
func register_beacon(
    beacon_id: felt, 
    owner: felt, 
    registration_date: felt, 
    checksum: felt, 
    serial_no: felt, 
    manufacturer: felt, 
    model: felt, 
    purpose: felt, 
    owner_info: felt, 
    vessel_info: felt, 
    emergency_contact_info: felt
):
    // ensure the beacon ID is not already registered.
    assert(!(beacon_id in self.registrations), "Beacon already registered.")
    
    // create a new RegistrationInfo object
    let registration_info = RegistrationInfo(
        beacon_id=beacon_id,
        owner=owner,
        registration_date=registration_date,
        checksum=checksum,
        serial_no=serial_no,
        manufacturer=manufacturer,
        model=model,
        purpose=purpose,
        owner_info=owner_info,
        vessel_info=vessel_info,
        emergency_contact_info=emergency_contact_info
    )
    
    self.registrations[beacon_id] = registration_info

// function to retrieve the registration information of a specific beacon
@public
func get_registration_info(beacon_id: felt) -> (
    owner: felt, 
    registration_date: felt, 
    checksum: felt, 
    serial_no: felt, 
    manufacturer: felt, 
    model: felt, 
    purpose: felt, 
    owner_info: felt, 
    vessel_info: felt, 
    emergency_contact_info: felt
):
    // ensure the beacon ID is registered
    assert(beacon_id in self.registrations, "Beacon not registered.")
    
    let registration_info = self.registrations[beacon_id]
    
    return (
        registration_info.owner, 
        registration_info.registration_date, 
        registration_info.checksum, 
        registration_info.serial_no, 
        registration_info.manufacturer, 
        registration_info.model, 
        registration_info.purpose, 
        registration_info.owner_info, 
        registration_info.vessel_info, 
        registration_info.emergency_contact_info
    )
