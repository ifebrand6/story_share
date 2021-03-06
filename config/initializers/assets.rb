# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile +=%w(public.js)
Rails.application.config.assets.precompile +=%w(admin.css)
Rails.application.config.assets.precompile += %w( public.css )
Rails.application.config.assets.precompile += %w( bootstrap.css )
Rails.application.config.assets.precompile += %w( booto.css )
Rails.application.config.assets.precompile += %w( boott.css )
Rails.application.config.assets.precompile += %w( boottt.css )
Rails.application.config.assets.precompile += %w( bootstrap.min.css )
Rails.application.config.assets.precompile += %w( animate.min.css )
Rails.application.config.assets.precompile += %w( demo.css )
Rails.application.config.assets.precompile += %w( light.css )
Rails.application.config.assets.precompile += %w( icon.css )
Rails.application.config.assets.precompile += %w( styles.css )