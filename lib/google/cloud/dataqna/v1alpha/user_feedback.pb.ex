defmodule Google.Cloud.Dataqna.V1alpha.UserFeedback.UserFeedbackRating do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :USER_FEEDBACK_RATING_UNSPECIFIED | :POSITIVE | :NEGATIVE

  field :USER_FEEDBACK_RATING_UNSPECIFIED, 0

  field :POSITIVE, 1

  field :NEGATIVE, 2
end

defmodule Google.Cloud.Dataqna.V1alpha.UserFeedback do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          free_form_feedback: String.t(),
          rating: Google.Cloud.Dataqna.V1alpha.UserFeedback.UserFeedbackRating.t()
        }

  defstruct [:name, :free_form_feedback, :rating]

  field :name, 1, type: :string
  field :free_form_feedback, 2, type: :string
  field :rating, 3, type: Google.Cloud.Dataqna.V1alpha.UserFeedback.UserFeedbackRating, enum: true
end
