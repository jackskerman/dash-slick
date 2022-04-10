# Dash Slick

Dash Slick is a Dash component library.

## SlickSlider

A component to wrap react-slick `Slider` component (https://github.com/akiran/react-slick/blob/master/src/slider.js).

### Code Example

```python
import dash_slick
import dash
import dash_html_components as html
import dash_bootstrap_components as dbc

app = dash.Dash(__name__, external_stylesheets=[dbc.themes.BOOTSTRAP])

placeholder_text = """
            Est nostrud non nulla labore aute dolore incididunt 
            enim adipisicing irure est nisi excepteur cillum. 
            Magna duis enim voluptate deserunt ullamco in cillum 
            duis magna. Elit ipsum consequat culpa ullamco incididunt. 
            Esse mollit ex amet labore non laboris minim. 
            Dolore labore mollit labore aliquip ad. Proident quis occaecat 
            aute ad quis veniam aliqua eiusmod laboris Lorem do occaecat. 
            Nisi proident labore magna cillum nostrud adipisicing.
        """

app.layout = html.Div([
    dash_slick.SlickSlider(
            dots=True,
            arrows=True,
            infinite=True,
            autoplay=True,
            speed=2000,
            slides_to_show=5,
            slides_to_scroll=1,
            center_mode=True,
            swipe_to_slide=True,
            slide_navigator=True,
            id="slick-slide",
            children=[
                html.Div(dbc.Card([
                    dbc.CardHeader(f"Slide {i}"),
                    dbc.CardBody(placeholder_text),
                    dbc.CardFooter(dbc.Button('Details'), style={'text-align': 'right'}),
                ]), style={'padding': '1em'}) for i in range(20)
            ],
            labels=[f"Slide {i}" for i in range(20)]
    ),
], style={'margin-top': '10%'})


if __name__ == '__main__':
    app.run_server(debug=True)
```
### Result

<img src="https://raw.githubusercontent.com/jackskerman/dash-slick/master/example_images/SliderExample.PNG" alt="Slider-Example" width="1000"/>