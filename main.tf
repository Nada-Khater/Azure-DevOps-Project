resource "azuredevops_project" "ado_nada" {
  name               = "Ado Nada"
  description        = "Azure DevOps Project"
  visibility         = "private"
  version_control    = "Git"
}

resource "azuredevops_agent_pool" "ado_pool" {
  name           = "Ado Pool"
}

resource "azuredevops_agent_queue" "agent_queue" {
  project_id     = azuredevops_project.ado_nada.id
  agent_pool_id  = azuredevops_agent_pool.ado_pool.id
}
