class LessonController < ApplicationController
  def step1
    render plain: "こんにちは、#{params[:name]}さん"
  end

  def step2
    #render plain: params[:controller] + "#" + params[:action]
    #render plain: request.remote_ip
    #render plain: request.env["HTTP_USER_AGENT"]
    render plain: request.headers["User-Agent"]
  end
end
