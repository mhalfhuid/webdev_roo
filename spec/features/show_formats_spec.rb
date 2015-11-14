# specs about show pagee
require 'spec_helper'
describe 'Show Format page' do
  it 'Displays detail info about formats' do
    format1 = Format.create(indeling_code: 'MK1',
                            indeling_naam: 'Maatschappelijke Klasse',
                            indeling_omschrijving: 'Zwaarte van misdrijven en overtredingen',
                            bron_naam: 'MK tabel',
                            userid_inserted: 'TEST_USER',
                            datum_inserted: ' ',
                            userid_updated: 'TEST_USER',
                            datum_updated: ' ')
    visit format_url(format1)
    expect(page).to have_text(format1.indeling_code)
    expect(page).to have_text(format1.indeling_naam)
    expect(page).to have_text(format1.indeling_omschrijving)
    expect(page).to have_text(format1.bron_naam)
  end
end
