

Instance:   publish-pki-material
InstanceOf: Requirements
Usage: #definition
* title = "Publish PKI material"
* status = $pubStatus#active
* publisher = "WHO"
* description = "Publish trust material to a Trust Anchor"
* actor[+] = Canonical(TrustNetworkParticipant)



Instance:   receive-pki-material
InstanceOf: Requirements
Usage: #definition
* title = "Receive PKI material"
* status = $pubStatus#active
* publisher = "WHO"
* description = "Receive trust material from a Trust Network Participant, for distribution within the Trust Network"
* actor[+] = Canonical(TrustNetworkAnchor)

Instance:   distribute-pki-material
InstanceOf: Requirements
Usage: #definition
* title = "Distribute PKI material"
* status = $pubStatus#active
* publisher = "WHO"
* description = "Make received trust material available through a distrubution point to a Trust Network Participant"
* actor[+] = Canonical(TrustNetworkAnchor)

Instance:   retrieve-pki-material
InstanceOf: Requirements
Usage: #definition
* title = "Retrieve PKI material"
* status = $pubStatus#active
* publisher = "WHO"
* description = "Retrieve PKI material from a distribution point"
* actor[+] = Canonical(TrustNetworkParticipant)
* actor[+] = Canonical(TrustNetworkAnchor)



Instance:   accept-mtls-connection
InstanceOf: Requirements
Usage: #definition
* title = "Accept mTLS"
* status = $pubStatus#active
* publisher = "WHO"
* description = "Accept an mTLS in order to conduct further transactions under a secure channel"
* actor[+] = Canonical(Issuer)


Instance:   initiate-mtls-connection
InstanceOf: Requirements
Usage: #definition
* title = "Initiate mTLS"
* status = $pubStatus#active
* publisher = "WHO"
* description = "Initiate an mTLS in order to conduct further transactions under a secure channel"
* actor[+] = Canonical(Receiver)


Instance:   provide-a-vhl-to-a-receiver
InstanceOf: Requirements
Usage: #definition
* title = "Provide VHL or VDHC"
* status = $pubStatus#active
* publisher = "WHO"
* description = "Is able to provide a VHL authorization mechanism or a VDHC to a VHL Receiver"
* actor[+] = Canonical(Holder)


Instance:   receive-a-vhl
InstanceOf: Requirements
Usage: #definition
* title = "Receive VHL or VDHC"
* status = $pubStatus#active
* publisher = "WHO"
* description = "Is able to receive a VHL authorization mechanism or a VDHC from a Holder"
* actor[+] = Canonical(Issuer)



