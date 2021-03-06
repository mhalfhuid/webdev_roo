require 'spec_helper'

describe 'Links between FormatVersion to FormatItem' do
  it 'Links from FormatVersion to FormatItem' do
    format1 = Format.create!(indeling_code: 'MK1',
                             indeling_naam: 'Maatschappelijke Klasse',
                             indeling_omschrijving: 'Zwaarte van misdrijven en overtredingen',
                             bron_naam: 'MK tabel',
                             userid_inserted: 'TEST_USER',
                             datum_inserted: ' ',
                             userid_updated: 'TEST_USER',
                             datum_updated: ' '
                            )

    formatversion1 = FormatVersion.create!(indeling_code: 'MK1',
                                           format_id: '1',
                                           versie_nummer: '1',
                                           versie_naam: 'Eerste versie 20-4-2014',
                                           huidig_ind: 'N',
                                           geldig_van_datum: ' ',
                                           geldig_tot_datum: ' ',
                                           userid_inserted: 'Functioneel beheerder1',
                                           datum_inserted: ' ',
                                           userid_updated: 'TEST_USER2',
                                           datum_updated: ' '
                                          )

    visit format_format_versions_url(format1)
    click_link 'show items'
    expect(current_path).to eq(format_format_version_format_items_path(format1, formatversion1))
  end
  it 'Links from FormatItem to FormatVersion' do
    format1 = Format.create!(indeling_code: 'MK1',
                             indeling_naam: 'Maatschappelijke Klasse',
                             indeling_omschrijving: 'Zwaarte van misdrijven en overtredingen',
                             bron_naam: 'MK tabel',
                             userid_inserted: 'TEST_USER',
                             datum_inserted: ' ',
                             userid_updated: 'TEST_USER',
                             datum_updated: ' '
                            )

    formatversion1 = FormatVersion.create!(indeling_code: 'MK1',
                                           format_id: '1',
                                           versie_nummer: '1',
                                           versie_naam: 'Eerste versie 20-4-2014',
                                           huidig_ind: 'N',
                                           geldig_van_datum: ' ',
                                           geldig_tot_datum: ' ',
                                           userid_inserted: 'Functioneel beheerder1',
                                           datum_inserted: ' ',
                                           userid_updated: 'TEST_USER2',
                                           datum_updated: ' '
                                          )
    visit format_format_version_format_items_url(format1, formatversion1)
    click_link 'Format versions'
    expect(current_path).to eq(format_format_versions_path(format1))
  end
end
