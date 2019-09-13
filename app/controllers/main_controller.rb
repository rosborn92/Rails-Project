class MainController < ApplicationController
    def question_page
        render html: "What is the secret number of life?" #.html_safe
    end

    def number
        render html: '42'
    end

    def cuber
        p params
        @cubed = params[:number].to_i ** 3
        render 'cuber.html.erb'
    end

    def divisible
        p params
        if params[:num1].to_i % params[:num2].to_i == 0
            @result = "#{params[:num1]} is evenly divisible by #{params[:num2]}"
        else
            @result = "#{params[:num1]} is not evenly divisible by #{params[:num2]}"
        end
        render 'divisible.html.erb'
    end

    def palindrome
        p params
        if params[:word].downcase == params[:word].downcase.reverse
            @palin = "#{params[:word]} is a palindrome."
        else
            @palin = "#{params[:word]} is not a palindrome."
        end
        render 'palindrome.html.erb'
    end

    def char_counter
        p params
        @count = params[:str].length
        render 'char_counter.html.erb'
    end

    def team
        render html: 'Rob Zombie, John Conor'
    end

    def greeting
        p params
        @name = params[:name]
        render "greeting.html.erb"
    end

    def places
        render "places.html.erb"
    end

    def destinations
        render 'destinations.html.erb'
    end

    def films
        render 'films.html.erb'
    end

    def tvshows
        render 'tvshows.html.erb'
    end

    def mainpage
        render 'mainpage.html.erb'
    end

    def madlib
        p params
        @noun = params[:noun]
        @verb = params[:verb]
        @adjective = params[:adjective]
        @adverb = params[:adverb]
        render 'madlib.html.erb'
    end
end
