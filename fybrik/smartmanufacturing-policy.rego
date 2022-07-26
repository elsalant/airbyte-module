package dataapi.authz

rule[{"name": "Only allow administrator access to unsafe assets", "action": "BlockResource"}]{
       input.situationStatus == "unsafe-high"
       input.request.role != "Admin"
}

rule[{}] {
  1 == 1
}


