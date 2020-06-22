class PagesController < ApplicationController
    def about
        @title = "About Ruby?!?!"
        @content = "This is some good content..."
    end
end
