defmodule InflexTest do
  use ExUnit.Case

  import Inflex

  test :singularize do
    assert "addendum" == singularize("addenda")
    assert "alga" == singularize("algae")
    assert "alumnus" == singularize("alumni")
    assert "amoeba" == singularize("amoebae")
    assert "antenna" == singularize("antennae")
    assert "bacterium" == singularize("bacteria")
    assert "cactus" == singularize("cacti")
    assert "curriculum" == singularize("curricula")
    assert "datum" == singularize("data")
    assert "fungus" == singularize("fungi")
    assert "genus" == singularize("genera")
    assert "larva" == singularize("larvae")
    assert "memorandum" == singularize("memoranda")
    assert "menu" == singularize("menus")
    assert "stimulus" == singularize("stimuli")
    assert "syllabus" == singularize("syllabi")
    assert "vertebra" == singularize("vertebrae")

    assert "user" == singularize("users")
    assert "sheep" == singularize("sheep")
    assert "mouse" == singularize("mice")
    assert "child" == singularize("children")

    assert "bus" == singularize("buses")
    assert "database" == singularize("databases")
    assert "shoe" == singularize("shoes")
    assert "zombie" == singularize("zombies")
    assert "virus" == singularize("viri")
    assert "goose" == singularize("geese")
    assert "criterion" == singularize("criteria")
    assert "radius" == singularize("radii")
    assert "class" == singularize("classes")
    assert "woman" == singularize("women")
    assert "seaman" == singularize("seamen")
    assert "man" == singularize("men")
    assert "abdomen" == singularize("abdomens")
    assert "abdomen" == singularize("abdomen")
    assert "specimen" == singularize("specimens")
    assert "specimen" == singularize("specimen")
    assert "manager" == singularize("manager")
    assert "manager" == singularize("managers")
    assert "Person" == singularize("People")
    assert "louse" == singularize("lice")
    assert "quantum" == singularize("quanta")
    assert "datum" == singularize("data")
    assert "foot" == singularize("feet")
    assert "die" == singularize("dice")
    assert "phenomenon" == singularize("phenomena")
    assert "license" == singularize("licenses")

    assert "bus" == singularize(:buses)
    assert "reserve" == singularize("reserves")
    assert "nerve" == singularize("nerves")
    assert "representative" == singularize("representatives")
  end

  test :pluralize do
    assert "addenda" == pluralize("addendum")
    assert "algae" == pluralize("alga")
    assert "alumni" == pluralize("alumnus")
    assert "amoebae" == pluralize("amoeba")
    assert "antennae" == pluralize("antenna")
    assert "bacteria" == pluralize("bacterium")
    assert "cacti" == pluralize("cactus")
    assert "curricula" == pluralize("curriculum")
    assert "data" == pluralize("datum")
    assert "fungi" == pluralize("fungus")
    assert "genera" == pluralize("genus")
    assert "larvae" == pluralize("larva")
    assert "memoranda" == pluralize("memorandum")
    assert "menus" == pluralize("menu")
    assert "stimuli" == pluralize("stimulus")
    assert "syllabi" == pluralize("syllabus")
    assert "vertebrae" == pluralize("vertebra")

    assert "users" == pluralize("user")
    assert "sheep" == pluralize("sheep")
    assert "mice" == pluralize("mouse")
    assert "children" == pluralize("child")

    assert "buses" == pluralize("bus")
    assert "databases" == pluralize("database")
    assert "shoes" == pluralize("shoe")
    assert "viri" == pluralize("virus")
    assert "geese" == pluralize("goose")
    assert "criteria" == pluralize("criterion")
    assert "radii" == pluralize("radius")
    assert "classes" == pluralize("class")
    assert "women" == pluralize("woman")
    assert "seamen" == pluralize("seaman")
    assert "men" == pluralize("man")
    assert "men" == pluralize("men")
    assert "women" == pluralize("women")
    assert "abdomens" == pluralize("abdomen")
    assert "specimens" == pluralize("specimen")
    assert "managers" == pluralize("manager")
    assert "lice" == pluralize("louse")
    assert "quanta" == pluralize("quantum")
    assert "data" == pluralize("datum")
    assert "data" == pluralize("data")
    assert "feet" == pluralize("foot")
    assert "dice" == pluralize("die")
    assert "phenomena" == pluralize("phenomenon")

    assert "buses" == pluralize(:bus)
    assert "reserves" == pluralize("reserve")
    assert "nerves" == pluralize("nerve")
  end

  test :special_case_nouns_ending_in_f_or_fe do
    assert "life" == singularize("lives")
    assert "knife" == singularize("knives")
    assert "hoof" == singularize("hooves")
    assert "roof" == singularize("roofs")
    assert "loof" == singularize("loofs")
    assert "wolf" == singularize("wolves")
    assert "calf" == singularize("calves")
    assert "scarf" == singularize("scarfs")
    assert "scurf" == singularize("scurfs")
    assert "wharf" == singularize("wharves")
    assert "loaf" == singularize("loaves")
    assert "leaf" == singularize("leaves")

    assert "lives" == pluralize("life")
    assert "knives" == pluralize("knife")
    assert "hooves" == pluralize("hoof")
    assert "roofs" == pluralize("roof")
    assert "loofs" == pluralize("loof")
    assert "wolves" == pluralize("wolf")
    assert "calves" == pluralize("calf")
    assert "scarfs" == pluralize("scarf")
    assert "scurfs" == pluralize("scurf")
    assert "wharves" == pluralize("wharf")
    assert "loaves" == pluralize("loaf")
    assert "leaves" == pluralize("leaf")
  end

  test :special_case_nouns_ending_in_o do
    assert "echo" == singularize("echoes")
    assert "hero" == singularize("heroes")
    assert "potato" == singularize("potatoes")
    assert "tomato" == singularize("tomatoes")
    assert "tooth" == singularize("teeth")

    assert "echoes" == pluralize("echo")
    assert "heroes" == pluralize("hero")
    assert "potatoes" == pluralize("potato")
    assert "tomatoes" == pluralize("tomato")
    assert "teeth" == pluralize("tooth")

    assert "statuses" == pluralize("status")
    assert "aliases" == pluralize("alias")
    assert "canvases" == pluralize("canvas")
  end

  test :pluralize_only_at_the_end_of_the_word do
    assert "leaflets" == pluralize("leaflet")
    assert "personalities" == pluralize("personality")
    assert "diets" == pluralize("diet")
    assert "footers" == pluralize("footer")
    assert "toothpicks" == pluralize("toothpick")
    assert "echograms" == pluralize("echogram")
    assert "herons" == pluralize("heron")
    assert "gooseberries" == pluralize("gooseberry")
    assert "womanizers" == pluralize("womanizer")
  end

  test :singularize_only_at_the_end_of_the_word do
    assert "general" == singularize("generals")
  end

  test :skip_singularize do
    assert "dog" == singularize("dog")

    assert "status" == singularize("status")
    assert "alias" == singularize("alias")
    assert "canvas" == singularize("canvas")
  end

  test :skip_pluralize do
    assert "deer" == pluralize("deer")
    assert "aircraft" == pluralize("aircraft")
    assert "dogs" == pluralize("dogs")
  end

  test :camelize_upper do
    assert "Upper" == camelize("upper")
    assert "UpperCamelCase" == camelize("upper_camel_case")
    assert "UpperCamelCase" == camelize("UpperCamelCase")
    assert "UpperCamelCase" == camelize("UPPER_CAMEL_CASE")
    assert "" == camelize("")
    refute "UpperCamelCase" == camelize("upper_camel_case", :lower)
  end

  test :camelize_lower do
    assert "lower" == camelize("lower", :lower)
    assert "lowerCamelCase" == camelize("lower_camel_case", :lower)
    assert "lowerCamelCase" == camelize("Lower_camel_case", :lower)
    assert "lowerCamelCase" == camelize("lowerCamelCase", :lower)
    assert "lowerCamelCase" == camelize("LOWER_CAMEL_CASE", :lower)
    assert "" == camelize("", :lower)
    refute "lowerCamelCase" == camelize("lower_camel_case")
  end

  test :parameterize do
    assert "elixir-inflex" == parameterize("elixir inflex")
    assert "elixir-inflex" == parameterize("Elixir Inflex")
    assert "elixir_inflex" == parameterize("elixir inflex", "_")
    assert "elixir-inflex" == parameterize("elixir%20inflex")
  end

  test :parameterize_to_ascii do
    assert "elixir-inflex" == parameterize_to_ascii("elixir inflex")
    assert "elixir-inflex" == parameterize_to_ascii("Elixir Inflex")
    assert "elixir_inflex" == parameterize_to_ascii("elixir inflex", "_")
    assert "elixir-inflex" == parameterize_to_ascii("elixir%20inflex")
  end

  test :underscore do
    assert "upper_camel_case" == underscore("UpperCamelCase")
    assert "lower_camel_case" == underscore("lowerCamelCase")
    assert "upper_camel_case" == underscore(UpperCamelCase)
    assert "lower_camel_case" == underscore(:lowerCamelCase)
    assert "elixir_inflex" == underscore("elixir-inflex")
    assert "elixir_inflex" == underscore("Elixir-Inflex")
  end

  test :ordinalize do
    assert "-113th" == ordinalize(-113)
    assert "-112th" == ordinalize(-112)
    assert "-111th" == ordinalize(-111)
    assert "-3rd" == ordinalize(-3)
    assert "-2nd" == ordinalize(-2)
    assert "-1st" == ordinalize(-1)
    assert "1st" == ordinalize(1)
    assert "2nd" == ordinalize(2)
    assert "3rd" == ordinalize(3)
    assert "4th" == ordinalize(4)
    assert "7th" == ordinalize(7)
    assert "8th" == ordinalize(8)
    assert "10th" == ordinalize(10)
    assert "11th" == ordinalize(11)
    assert "12th" == ordinalize(12)
    assert "15th" == ordinalize(15)
    assert "17th" == ordinalize(17)
    assert "20th" == ordinalize(20)
    assert "21st" == ordinalize(21)
    assert "22nd" == ordinalize(22)
    assert "23rd" == ordinalize(23)
    assert "26th" == ordinalize(26)
    assert "33rd" == ordinalize(33)
    assert "34th" == ordinalize(34)
    assert "35th" == ordinalize(35)
    assert "41st" == ordinalize(41)
    assert "85th" == ordinalize(85)
    assert "90th" == ordinalize(90)
    assert "92nd" == ordinalize(92)
    assert "111th" == ordinalize(111)
    assert "112th" == ordinalize(112)
    assert "113th" == ordinalize(113)
  end

  test :inflect do
    assert "child" == inflect("children", 1)
    assert "child" == inflect("children", 1.0)
    assert "people" == inflect("person", 2)
    assert "People" == inflect("Person", 2)
    assert "dogs" == inflect("dog", 3.2)
    assert "slice" == inflect("slice", 1)
    assert "slice" == inflect("slice", 1.0)
    assert "accomplice" == inflect("accomplice", 1)
    assert "accomplice" == inflect("accomplice", 1.0)
  end
end
