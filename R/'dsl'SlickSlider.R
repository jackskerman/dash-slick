# AUTO GENERATED FILE - DO NOT EDIT

#' @export
'dsl'SlickSlider <- function(children=NULL, id=NULL, arrows=NULL, autoplay=NULL, center_mode=NULL, center_padding=NULL, className=NULL, dots=NULL, infinite=NULL, labels=NULL, responsive=NULL, slide_navigator=NULL, slides_to_scroll=NULL, slides_to_show=NULL, speed=NULL, style=NULL, swipe_to_slide=NULL, variable_width=NULL, vertical=NULL) {
    
    props <- list(children=children, id=id, arrows=arrows, autoplay=autoplay, center_mode=center_mode, center_padding=center_padding, className=className, dots=dots, infinite=infinite, labels=labels, responsive=responsive, slide_navigator=slide_navigator, slides_to_scroll=slides_to_scroll, slides_to_show=slides_to_show, speed=speed, style=style, swipe_to_slide=swipe_to_slide, variable_width=variable_width, vertical=vertical)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'SlickSlider',
        namespace = 'dash_slick',
        propNames = c('children', 'id', 'arrows', 'autoplay', 'center_mode', 'center_padding', 'className', 'dots', 'infinite', 'labels', 'responsive', 'slide_navigator', 'slides_to_scroll', 'slides_to_show', 'speed', 'style', 'swipe_to_slide', 'variable_width', 'vertical'),
        package = 'dashSlick'
        )

    structure(component, class = c('dash_component', 'list'))
}
