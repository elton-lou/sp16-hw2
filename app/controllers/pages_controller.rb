class PagesController < ApplicationController
  def home
    foo = Foobar.new "baz"
    @baz = foo.bar :cat, sat: :dat, dat: :sat
  end

  def stringify
    if (params[:name].blank? && params[:adjective].blank?)
      @text = "You are nothing!"
    else
      @text = "#{params[:name]} is so #{params[:adjective]}"
    end
  end

  def age
  end

  def me
    name = "Elton Lou"
    
    intro = "Here is a litte bit about myself:"
    about_myself = "I was born and raised in Bellevue, WA. I am a huge Seahawks and Roger Federer fan. I am currently a third-year CS major at Cal."
    @print = "#{name}. #{intro} #{about_myself}"
  end

  def person
    name = params[:name]
    age = params[:age]
    person = Person.new(name, age)
    intro = person.introduce
    birth = person.birth_year
    nickname = person.nickname
    @print = "#{intro}, #{birth}, #{nickname}"
  end
end
