require_relative '../config'

# this is where you should use an ActiveRecord migration to 


class CreateSenatorsAndReps < ActiveRecord::Migration
  def change
    create_table :senators do |t|
      t.string  :title, :firstname, :middlename, :lastname, :name_suffix, :nickname, :party, :state, 
                :gender, :phone, :fax, :website, :webform,:congress_office, :bioguide_id, 
                :fec_id, :crp_id, :twitter_id, :congresspedia_url, :youtube_url, 
                :facebook_id, :official_rss, :senate_class
      t.integer :district, :in_office, :votesmart_id, :govtrack_id
      t.date    :birthdate

      t.timestamps
    end

    create_table :representatives do |t|
      t.string  :title, :firstname, :middlename, :lastname, :name_suffix, :nickname, :party, :state, 
                :gender, :phone, :fax, :website, :webform,:congress_office, :bioguide_id, 
                :fec_id, :crp_id, :twitter_id, :congresspedia_url, :youtube_url, 
                :facebook_id, :official_rss, :senate_class
      t.integer :district, :in_office, :votesmart_id, :govtrack_id
      t.date    :birthdate

      t.timestamps
    end
  end
end

