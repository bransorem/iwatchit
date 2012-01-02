# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_iwatchedit_session',
  :secret      => 'e31bd184ffda0e2409a2baff37b0fc4228a5775386d8951e078b4e888262085fe39bca700648517f44f861e86c2a82dfad1911f397310dcd1831dbf310d150db'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
