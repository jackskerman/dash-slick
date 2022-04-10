import dash_slick
import dash
import dash_html_components as html
import dash_bootstrap_components as dbc

app = dash.Dash(__name__, external_stylesheets=[dbc.themes.BOOTSTRAP])

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
                    dbc.CardBody(i)
                ]), style={'padding': '1em'}) for i in range(20)
            ],
            labels=[f"CARD {i}" for i in range(20)]
    ),
])


if __name__ == '__main__':
    app.run_server(debug=True)
