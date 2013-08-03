class Api::DistributionListsController < ApplicationController
  #before_filter :authenticate_user!, :only => [:create]

  respond_to :json

  API_VERSION = '1.0'

  def show
    widget ={
      locations: [{
          name: "Location 1"
          street_address_line_1: "2603 E. Main St"
          city: "Richmond"
          state: "VA"
          zip_code: "23323"
          phone: 8043550001
          media: [{
              media_type: "image"
              url: ""
            }]
        }],
      lists: [{
          name: "Brunch",
          categories: [{
            title: "Appetizers",
            products: [{
                primary_image_url: "",
                title: "",
                description: ""
              }, {
                primary_image_url: "",
                title: "",
                description: ""
              }, {
                primary_image_url: "",
                title: "",
                description: ""
              }]
            }, {
            name: "Entrees",
            products: [{
                primary_image_url: "",
                title: "",
                description: ""
              }]
            }, {
            name: "Drinks",
            products: [{
              primary_image_url: "",
              title: "",
              description: ""
              }]
            }
          ]
        }, {
          name: "Lunch",
          categories: [{
              title: "",
              products: []
            }]
          }, {
          name: "Dinner",
          categores: [{
            title: "",
            products: []
          }]
        }]
      }

      render_result(widget)
    end

  def render_result(result = {}, status = 200, status_string = 'OK')
  	return_value = {'version' => API_VERSION,
  		'statusCode' => status,
  		'statusString' => status_string,
  		'result' => result}
  		if params[:callback]
  			render :text => "#{params[:callback]}(#{return_value.to_json});", :content_type => "application/javascript"
  		elsif params[:isIEPhoto]
  			render :text=> return_value.to_json, :content_type => "text/plain"
  		else
  			render :json => return_value.to_json
  		end
  	end

  end