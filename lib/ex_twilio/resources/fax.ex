defmodule ExTwilio.Faxes do
  @moduledoc """
  Represents a Fax resource in the Twilio API.

  - [Twilio docs](https://www.twilio.com/docs/api/fax/rest)
  """

  defstruct sid: nil,
    account_sid: nil,
    from: nil,
    to: nil,
    direction: nil,
    num_pages: nil,
    duration: nil,
    media_sid: nil,
    media_url: nil,
    status: nil,
    quality: nil,
    api_version: nil,
    price: nil,
    price_unit: nil,
    date_created: nil,
    date_updated: nil

  use ExTwilio.Resource, import: [
    :stream,
    :all,
    :find,
    :create,
    :update,
    :destroy
  ]

  def parents, do: [:account]
end
