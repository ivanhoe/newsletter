# lib/my_app_web/live/hello_live.ex
defmodule NewsletterWeb.HelloLive do
  use Phoenix.LiveView
  use LiveViewNative.LiveView

  @impl true
  def render(%{platform_id: :swiftui} = assigns) do
    # This UI renders on the iPhone / iPad app
    ~SWIFTUI"""
    <VStack>
      <Text>
        Hello native!
      </Text>
      <Text>
        They need to merge
      </Text>
      <Text>
        They need to merge
      </Text>
      <Text>
      Anothter text
      </Text>

    </VStack>
    """
  end

  @impl true
  @spec render(map()) :: Phoenix.LiveView.Rendered.t()
  def render(%{} = assigns) do
    # This UI renders on the web
    ~H"""
    <div class="flex w-full h-screen items-center">
      <span class="w-full text-center">
        Hello web!
      </span>
    </div>
    """
  end

end
