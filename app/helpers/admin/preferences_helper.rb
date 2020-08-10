module Admin::PreferencesHelper

    def display_preferences(preferences)
        simple_format(display_creation_setting(preferences.allow_create_artists, "Artist") + "\n" + display_creation_setting(preferences.allow_create_songs, "Song"))
    end

    def display_creation_setting(allow_create_artists,model_name)
        if allow_create_artists
            model_name + " Creation is Turned On"
        else
            model_name + " Creation is Turned Off"
        end
    end


end 