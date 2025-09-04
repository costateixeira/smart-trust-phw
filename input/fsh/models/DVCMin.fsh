Alias: $identifierType = http://terminology.hl7.org/CodeSystem/v2-0203

Logical:         DVCMin
Title:           "DVC HCERT Payload"
Description:     "Mininmial DVC payload for use within an HCERT Payload"
* ^status = #draft
* ^abstract = true
* n 1..1 string "Person name"
* dob 1..1 date "Date of birth in YYYY-MM-DD format"
* s 0..1 code "Sex"
* ntl 0..1 code "Nationality"
* nid 0..1 string "National Identification Document"
* ndt 0..1 code "National ID Document Type"
* ndt from $identifierTypeVS (extensible)
* gn 0..1 string "Parent or Guardian Name"
* v 1..* DVCMinVaccineDetails "Vaccine Details" "Vaccine Details"


Logical: DVCMinVaccineDetails
Title:  "DVC HCert Vaccine Details (Minimal)"
Description:     "DVC Vaccine Details for a ininmial DVC payload for use within an HCERT Payload"
* ^status = #draft
* ^abstract = true
* vp 1..1 string "ICVP Product Catalog ID"
* dt 1..1 date "Date of vaccination, YYYY-MM-DD format"
* cn 0..1 string "Name of supervising clinician"
* is 0..1 id "Certificate issuer id (referenced organization)"
* bo 1..1 string "Batch No"
* vls 0..1 date "Certificate Validity periods start date"
* vle 0..1 date "Certificate Validity periods end date"
* obeys must-have-issuer-or-clinician-name


Logical:         DVCMinVaccineDetailsPreQual
Parent:          DVCMinVaccineDetails
Title:           "DVC HCERT Payload for PreQual DB"
Description:     "DVC payload for a minimal DVC for use within an HCERT Payload using the WHO PreQual Vaccine Database"
* ^version = "1"
* ^status = #draft
* ^abstract = false
* vp from $PreQualProductIdsVS (required)



Logical: DVCMinPreQual
Parent:  DVCMin
Description: "DVC payload mininmized  for use within an HCERT Payload with the WHO PreQual Vaccine Database"
* ^abstract = false
* v only DVCMinVaccineDetailsPreQual

Invariant: must-have-issuer-or-clinician-name
Description: "Either issuer or clinicianName must be present"
Expression: "v.is.exists() or v.cn.exists()"
Severity: #error
