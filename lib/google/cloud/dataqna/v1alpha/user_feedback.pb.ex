defmodule Google.Cloud.Dataqna.V1alpha.UserFeedback.UserFeedbackRating do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :USER_FEEDBACK_RATING_UNSPECIFIED, 0
  field :POSITIVE, 1
  field :NEGATIVE, 2
end
defmodule Google.Cloud.Dataqna.V1alpha.UserFeedback do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :free_form_feedback, 2, type: :string, json_name: "freeFormFeedback"
  field :rating, 3, type: Google.Cloud.Dataqna.V1alpha.UserFeedback.UserFeedbackRating, enum: true
end
