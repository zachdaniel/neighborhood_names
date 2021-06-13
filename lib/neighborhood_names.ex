defmodule NeighborhoodNames do
  @moduledoc """
  NeighborhoodNames keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  # final
  @place_names ~w(park place ridge heights grove villas cove woods village chase club hollow valey) ++
                 ["country club"]
  @water_names ~w(river stream bay mill bayou lake crossing water glen)

  # secondary
  @nature_names ~w(palm pine willow oak elm maple country coastal)
  @animal_names ~w(flamingo cougar dolphin panther heron)
  @possessives ~w(smuggler's pirate's trader's king's queen's admiral's captain's skipper's)

  # prefixes
  @color_prefix ~w(blue green orange pink black silver)
  @articles ~w(the)
  @adjectives ~w(grassy quiet still calm dancing whispering winding victorian old new majestic)

  def generate() do
    color_prefix =
      case Enum.random(0..9) do
        n when n < 2 ->
          Enum.random(@color_prefix) <> " "

        n when n < 4 ->
          Enum.random(@articles) <> " "

        n when n < 6 ->
          Enum.random(@adjectives) <> " "

        _ ->
          ""
      end

    modifier =
      case Enum.random(0..9) do
        n when n < 1 ->
          ""

        _ ->
          Enum.random(@nature_names ++ @animal_names ++ @possessives)
      end

    color_prefix <> modifier <> " " <> Enum.random(@place_names ++ @water_names)
  end
end
