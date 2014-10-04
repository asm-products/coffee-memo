module IntegrationHelpers
  def show_page
    save_page Rails.root.join('public', 'capybara.html')
    `launchy http://app.#{ENV['base_url']}:5000/capybara.html`
  end
end
