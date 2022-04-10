
module DashSlick
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "0.0.1"

include("jl/'dsl'_slickslider.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "dash_slick",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "dash_slick.min.js",
    external_url = "https://unpkg.com/dash_slick@0.0.1/dash_slick/dash_slick.min.js",
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "dash_slick.min.js.map",
    external_url = "https://unpkg.com/dash_slick@0.0.1/dash_slick/dash_slick.min.js.map",
    dynamic = true,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end
