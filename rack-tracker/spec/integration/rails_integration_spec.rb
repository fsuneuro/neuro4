require 'support/capybara_app_helper'

RSpec.describe "Rails Integration" do
  before do
    setup_app(action: :index) do |tracker|
      tracker.handler :track_all_the_things, { custom_key: 'SomeKey123' }
      tracker.handler :another_handler, { custom_key: 'AnotherKey42' }
    end

    visit '/'
  end

  subject { page.html.gsub(/^\s*/, '') }

  let(:expected_html) do
    <<-HTML.gsub(/^\s*/, '')
      <html>
        <head>
          <title>Metal Layout</title>
        <script type="text/javascript">
        myAwesomeFunction("tracks", "like", "no-one-else", "SomeKey123");
      </script>
      </head>
        <body class="do-we-support-attributes-on-the-body-tag">
          <h1>welcome to metal#index</h1>
        <script type="text/javascript">
        anotherFunction("tracks-event-from-down-under", "AnotherKey42");
      </script>
        </body>
      </html>
    HTML
  end

  it "embeds the script tag with tracking event from the controller action" do
    expect(subject).to eql(expected_html)
  end
end
