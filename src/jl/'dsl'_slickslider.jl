# AUTO GENERATED FILE - DO NOT EDIT

export 'dsl'_slickslider

"""
    'dsl'_slickslider(;kwargs...)
    'dsl'_slickslider(children::Any;kwargs...)
    'dsl'_slickslider(children_maker::Function;kwargs...)


A SlickSlider component.

Keyword arguments:
- `children` (a list of or a singular dash component, string or number; optional): Your carousel is vertical
- `id` (String; optional): Id of the element
- `arrows` (Bool; optional): Arrows to control carousel
- `autoplay` (Bool; optional): If the carousel will start to play automatically
- `center_mode` (Bool; optional): To centralize the carousel
- `center_padding` (String; optional): Padding on the sides
- `className` (String; optional): Style class of the component.
- `dots` (Bool; optional): Dots under carousel
- `infinite` (Bool; optional): If the carousel content will repeat in a loop
- `labels` (Array of Strings; optional): Your labels for dropdown if slide_navigator is set to True
- `responsive` (Array; optional): Settings of breakpoints
- `slide_navigator` (Bool; optional): Render a dropdown that navigates between slides
- `slides_to_scroll` (Real; optional): How many slides will scroll when you swipe the carousel
- `slides_to_show` (Real; optional): How many slides you want to show
- `speed` (Real; optional): Speed of autoplay
- `style` (Dict; optional): Inline style of the component.
- `swipe_to_slide` (Bool; optional): If you can slide to scroll the slides
- `variable_width` (Bool; optional): The slides width varies according to the screen size
- `vertical` (Bool; optional): If your carousel is vertical
"""
function 'dsl'_slickslider(; kwargs...)
        available_props = Symbol[:children, :id, :arrows, :autoplay, :center_mode, :center_padding, :className, :dots, :infinite, :labels, :responsive, :slide_navigator, :slides_to_scroll, :slides_to_show, :speed, :style, :swipe_to_slide, :variable_width, :vertical]
        wild_props = Symbol[]
        return Component("'dsl'_slickslider", "SlickSlider", "dash_slick", available_props, wild_props; kwargs...)
end

'dsl'_slickslider(children::Any; kwargs...) = 'dsl'_slickslider(;kwargs..., children = children)
'dsl'_slickslider(children_maker::Function; kwargs...) = 'dsl'_slickslider(children_maker(); kwargs...)

