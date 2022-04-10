import React, {Component} from 'react';
import PropTypes from 'prop-types';
import Slider from "react-slick";
import './SlickSlider.scss'
import Select from 'react-select'

export default class SlickSlider extends Component {
    state = {
        slideIndex: 0,
      };
  
    render() {
        const {
            dots,
            arrows,
            infinite,
            autoplay,
            speed,
            slides_to_show,
            slides_to_scroll,
            center_mode,
            center_padding,
            swipe_to_slide,
            slide_navigator,
            variable_width,
            responsive,
            vertical,
            className,
            style,
            id,
            children,
            labels
        } = this.props

        const sliderSettings = {
            id: id,
            dots: dots || false,
            arrows: arrows || true,
            infinite: infinite || true,
            autoplay: autoplay || false,
            speed: speed || 1000,
            slidesToShow: slides_to_show || 3,
            slidesToScroll: slides_to_scroll || 1,
            centerMode: center_mode || false,
            centerPadding: center_padding || '50px',
            swipeToSlide: swipe_to_slide || true,
            variableWidth: variable_width || false,
            responsive: responsive || null,
            vertical: vertical || false,
            className: "slide-to-carousel",
            beforeChange: (current, next) => this.setState({ slideIndex: next }),
        };
        
        const selectOptions = labels.map((label, value) => ({value, label}))

        const selectSettings = {
            options: selectOptions,
            onChange: e => this.slider.slickGoTo(e.value),
            value: selectOptions.filter(option => option.value === this.state.slideIndex),
            className: "slide-select",
            isMulti: false,
            isClearable: false,
            isSearchable: true,
            menuPortalTarget: document.querySelector('body')
        };

      return (
        <div className={className} style={style}>
          {slide_navigator && <Select {...selectSettings}/>}
          <Slider ref={slider => (this.slider = slider)} {...sliderSettings}>
            {children}
          </Slider>
        </div>
      );
    }
  }


SlickSlider.defaultProps = {
    
};

SlickSlider.propTypes = {
    /**
     * Dots under carousel
     */
    dots: PropTypes.bool,

    /**
     * Arrows to control carousel
     */
    arrows: PropTypes.bool,

    /**
     * If the carousel content will repeat in a loop
     */
    infinite: PropTypes.bool,

    /**
     * If the carousel will start to play automatically
     */
    autoplay: PropTypes.bool,

    /**
     * Speed of autoplay
     */
    speed: PropTypes.number,

    /**
     * How many slides you want to show
     */
    slides_to_show: PropTypes.number,

    /**
     * Render a dropdown that navigates between slides
     */

    slide_navigator: PropTypes.bool,

    /**
     * Your labels for dropdown if slide_navigator is set to True
     */
    labels: PropTypes.arrayOf(PropTypes.string),

    /**
     * How many slides will scroll when you swipe the carousel
     */
    slides_to_scroll: PropTypes.number,

    /**
     * To centralize the carousel
     */
    center_mode: PropTypes.bool,

    /**
     * Padding on the sides
     */
    center_padding: PropTypes.string,

    /**
     * If you can slide to scroll the slides
     */
    swipe_to_slide: PropTypes.bool,

    /**
     * The slides width varies according to the screen size
     */
    variable_width: PropTypes.bool,

    /**
     * Settings of breakpoints
     */
    responsive: PropTypes.array,

    /**
     * If your carousel is vertical
     */
    vertical: PropTypes.bool,

    /**
     * Your carousel is vertical
     */
    children: PropTypes.node,

    /**
     * Inline style of the component.
     */
    style: PropTypes.object,

    /**
     * Style class of the component.
     */ 
    className: PropTypes.string,

    /**
     * Id of the element
     */
    id: PropTypes.string

};