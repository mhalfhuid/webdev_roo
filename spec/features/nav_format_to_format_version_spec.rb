require 'spec_helper'

describe 'Navigate between format and format_version pages' do
  it 'link from format show to format_version index page' do
    format1 = Format.create(indeling_code: 'MK1',
                            indeling_naam: 'Maatschappelijke Klasse',
                            indeling_omschrijving: 'Zwaarte van misdrijven en overtredingen',
                            bron_naam: 'MK tabel',
                            userid_inserted: 'TEST_USER',
                            datum_inserted: ' ',
                            userid_updated: 'TEST_USER',
                            datum_updated: ' ')
    # starts from Format show page
    visit format_url(format1)
    click_link format1.indeling_naam
    # switches from format show to format_version index
    expect(current_path).to eq(format_format_versions_path(format1))
  end
  it 'Links from format_version index page to format show page' do
    format1 = Format.create(indeling_code: 'MK1',
                            indeling_naam: 'Maatschappelijke Klasse',
                            indeling_omschrijving: 'Zwaarte van misdrijven en overtredingen',
                            bron_naam: 'MK tabel',
                            userid_inserted: 'TEST_USER',
                            datum_inserted: ' ',
                            userid_updated: 'TEST_USER',
                            datum_updated: ' ')

    format1_version = FormatVersion.create( indeling_code: 'MK1',
                                            format_id: '1',
                                            versie_nummer: '1',
                                            versie_naam: 'Eerste versie 20-4-2014',
                                            huidig_ind: 'N',
                                            geldig_van_datum: ' ',
                                            geldig_tot_datum: ' ',
                                            userid_inserted: 'Functioneel beheerder1',
                                            datum_inserted: ' ',
                                            userid_updated: 'TEST_USER2',
                                            datum_updated: ' ')

    # starts from FormatVersion list page
    visit format_format_versions_url(format1)
    click_link 'back to format'
    # switches from FormatVersion page to Format show page
    expect(current_path).to eq(format_path(format1))
  end
end
