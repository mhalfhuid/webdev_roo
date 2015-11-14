require 'spec_helper'

describe 'Viewing list of formats' do
  it 'Shows the number of formats, name and description' do
    # ARRANGE
    format1 = Format.create(indeling_code: 'MK1',
                            indeling_naam: 'Maatschappelijke Klasse',
                            indeling_omschrijving: 'Zwaarte van misdrijven en overtredingen',
                            bron_naam: 'MK tabel',
                            userid_inserted: 'TEST_USER',
                            datum_inserted: ' ',
                            userid_updated: 'TEST_USER',
                            datum_updated: ' ')

    format2 = Format.create(indeling_code: 'MK2',
                            indeling_naam: 'Maatschappelijke Klasse twee',
                            indeling_omschrijving: 'Zwaarte van misdrijven en overtredingen',
                            bron_naam: 'MK tabel',
                            userid_inserted: 'TEST_USER',
                            datum_inserted: ' ',
                            userid_updated: 'TEST_USER',
                            datum_updated: ' ')

    format3 = Format.create(indeling_code: 'TIJD',
                            indeling_naam: 'Tijdsindeling',
                            indeling_omschrijving: 'Indeling over de tijd',
                            bron_naam: 'Datum tabel',
                            userid_inserted: 'TEST_USER',
                            datum_inserted: ' ',
                            userid_updated: 'TEST_USER',
                            datum_updated: ' ')
    # ACT
    visit formats_url
    # ASSERT, assert your expactations
    expect(page).to have_text('3 Formats')
    expect(page).to have_text(format1.indeling_code)
    expect(page).to have_text(format2.indeling_code)
    expect(page).to have_text(format3.indeling_code)
    expect(page).to have_text(format1.indeling_naam)
    expect(page).to have_text(format2.indeling_naam)
    expect(page).to have_text(format3.indeling_naam)
  end
end
