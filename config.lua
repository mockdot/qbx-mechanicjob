Config = {}

-- **** IMPORTANT ****
-- UseTarget should only be set to true when using qb-target
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Targets = {}

Config.DebugPoly = false

Config.AttachedVehicle = nil

Config.MaxStatusValues = {
    ["engine"] = 1000.0,
    ["body"] = 1000.0,
    ["radiator"] = 100,
    ["axle"] = 100,
    ["brakes"] = 100,
    ["clutch"] = 100,
    ["fuel"] = 100,
}

Config.PartLabels = {
    engine = Lang:t('labels.engine'),
    body = Lang:t('labels.bodsy'),
    radiator = Lang:t('labels.radiator'),
    axle = Lang:t('labels.axle'),
    brakes = Lang:t('labels.brakes'),
    clutch = Lang:t('labels.clutch'),
    fuel = Lang:t('labels.fuel'),
}

Config.RepairCost = {
    ["body"] = "plastic",
    ["radiator"] = "plastic",
    ["axle"] = "steel",
    ["brakes"] = "iron",
    ["clutch"] = "aluminum",
    ["fuel"] = "plastic",
}

Config.RepairCostAmount = {
    ["engine"] = {
        item = "metalscrap",
        costs = 2,
    },
    ["body"] = {
        item = "plastic",
        costs = 3,
    },
    ["radiator"] = {
        item = "steel",
        costs = 5,
    },
    ["axle"] = {
        item = "aluminum",
        costs = 7,
    },
    ["brakes"] = {
        item = "copper",
        costs = 5,
    },
    ["clutch"] = {
        item = "copper",
        costs = 6,
    },
    ["fuel"] = {
        item = "plastic",
        costs = 5,
    },
}

Config.Businesses = {
    "Auto Repair",
}

Config.AuthorizedIds = {
    'citizenid',
}

---@alias Plate {coords: vector4, boxData: {heading: number, length: number, width: number, debugPoly: boolean}, AttachedVehicle: number?}
---@type Plate[]
Config.Plates = {
    {
        coords = vector4(-340.95, -128.24, 39, 160.0),
        boxData = {
            heading = 340,
            length = 5,
            width = 2.5,
            debugPoly = false
        },
        AttachedVehicle = nil,
    },
    {
        coords = vector4(-327.91, -144.34, 38.86, 70.34),
        boxData = {
            heading = 249,
            length = 6.5,
            width = 5,
            debugPoly = false
        },
        AttachedVehicle = nil,
    },
}

Config.Locations = {
    exit = vector3(-339.04, -135.53, 39.00),
    duty = vector3(-323.30, -128.79, 39.02),
    stash = vector3(-319.19, -131.90, 37.98),
    vehicle = vector4(-370.51, -107.88, 38.35, 72.56),
}

Config.Vehicles = {
    ["flatbed"] = "Flatbed",
    ["towtruck"] = "Towtruck",
    ["minivan"] = "Minivan (Rental Car)",
    ["blista"] = "Blista",
}

---@alias Range {min: integer, max: integer}
---@type {min: integer, max: integer, multiplier: Range}[]
Config.MinimalMetersForDamage = {
    {
        min = 8000,
        max = 12000,
        multiplier = {
            min = 1,
            max = 8,
        }
    },
    {
        min = 12000,
        max = 16000,
        multiplier = {
            min = 8,
            max = 16,
        }
    },
    {
        min = 12000,
        max = 16000,
        multiplier = {
            min = 16,
            max = 24,
        }
    },
}

Config.DamageableParts = {
    "radiator",
    "axle",
    "brakes",
    "clutch",
    "fuel",
}
