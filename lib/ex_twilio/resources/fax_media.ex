defmodule ExTwilio.FaxMedia do
  @moduledoc """
  Represents an Fax Media subresource in the Twilio API.

  - [Twilio docs](https://www.twilio.com/docs/api/fax/rest/fax-media)

  ## Examples

  Since FaxMedia belongs to a Fax in Twilio's API, you must pass a Fax SID to
  each function in this module.

  ExTwilio.FaxMedia.all(fax: "fax_sid")
  """

  defstruct sid: nil,
    account_sid: nil,
    fax_sid: nil,
    content_type: nil,
    date_created: nil,
    date_updated: nil,
    url: nil

  use ExTwilio.Resource, import: [:stream, :all, :find, :destroy]

  def resource_name, do: "Media"
  def resource_collection_name, do: "media"
  def parents, do: [:faxes]
end
