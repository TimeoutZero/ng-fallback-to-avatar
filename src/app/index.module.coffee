'use strict'

# =============================================
# Vendors
# =============================================
angular.module("ngFallbackToAvatar.vendors", [])

# =============================================
# Modules
# =============================================
# angular.module("ngFallbackToAvatar.controllers" , ["ngFallbackToAvatar.vendors"])
# angular.module("ngFallbackToAvatar.filters"     , ["ngFallbackToAvatar.vendors"])
# angular.module("ngFallbackToAvatar.factories"   , ["ngFallbackToAvatar.vendors"])
angular.module("ngFallbackToAvatar.constants"   , ["ngFallbackToAvatar.vendors"])
# angular.module("ngFallbackToAvatar.services"    , ["ngFallbackToAvatar.vendors"])
angular.module("ngFallbackToAvatar.directives"  , ["ngFallbackToAvatar.vendors"])
angular.module("ngFallbackToAvatar.mocks"       , ["ngFallbackToAvatar.vendors"])
# angular.module("ngFallbackToAvatar.configs"     , ["ngFallbackToAvatar.vendors"])
# angular.module("ngFallbackToAvatar.providers"   , ["ngFallbackToAvatar.vendors"])


# =============================================
# Scripts Module
# =============================================
angular.module("ngFallbackToAvatar.scripts", [
  # "ngFallbackToAvatar.controllers",
  "ngFallbackToAvatar.constants",
  # "ngFallbackToAvatar.filters"
  # "ngFallbackToAvatar.factories",
  # "ngFallbackToAvatar.services",
  "ngFallbackToAvatar.directives",
  "ngFallbackToAvatar.mocks",
  # "ngFallbackToAvatar.providers",
  # "ngFallbackToAvatar.configs"
])


# =============================================
# Main Module
# =============================================
angular.module("ngFallbackToAvatar", [
  "ngFallbackToAvatar.scripts",
  "ngFallbackToAvatar.vendors"
])


