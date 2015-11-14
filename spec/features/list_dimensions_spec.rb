require 'spec_helper'

describe 'Viewing the list of dimensions' do
  it 'shows the number of dimensions' do
    # ARRANGE
    dimension1 = Dimension.create(dimensie_code: 'dim1',
                                  dimensie_naam: 'MK',
                                  dimensie_omschrijving: 'Level 1 dimension',
                                  bron_type: 'TST',
                                  bron_naam: 'TEST',
                                  doeltabel_naam: 'TEST TARGET',
                                  wijzig_ind: 'J',
                                  dimensie_item_num_ind: 'N20',
                                  userid_inserted: 'TEST_USER',
                                  datum_inserted: ' ',
                                  userid_updated: 'TEST_USER',
                                  datum_updated: ' ')

    dimension2 = Dimension.create(dimensie_code: 'dim2',
                                  dimensie_naam: 'Tijd',
                                  dimensie_omschrijving: 'Level 2 dimension',
                                  bron_type: 'TST',
                                  bron_naam: 'TEST',
                                  doeltabel_naam: 'TEST TARGET',
                                  wijzig_ind: 'J',
                                  dimensie_item_num_ind: 'N20',
                                  userid_inserted: 'TEST_USER',
                                  datum_inserted: ' ',
                                  userid_updated: 'TEST_USER',
                                  datum_updated: ' ')

    dimension3 = Dimension.create(dimensie_code: 'dim3',
                                  dimensie_naam: 'Organisatie',
                                  dimensie_omschrijving: 'Level 3 dimension',
                                  bron_type: 'TST',
                                  bron_naam: 'TEST',
                                  doeltabel_naam: 'TEST TARGET',
                                  wijzig_ind: 'J',
                                  dimensie_item_num_ind: 'N20',
                                  userid_inserted: 'TEST_USER',
                                  datum_inserted: ' ',
                                  userid_updated: 'TEST_USER',
                                  datum_updated: ' ')
    # ACT, what shout Rails do
    visit dimensions_url
    # ASSERT, assert your expactations
    expect(page).to have_text('3 Dimensions')
    expect(page).to have_text(dimension1.dimensie_naam)
    expect(page).to have_text(dimension2.dimensie_naam)
    expect(page).to have_text(dimension3.dimensie_naam)

    expect(page).to have_text(dimension1.dimensie_code)
    # expect(page).to have_text(dimension1.dimensie_omschrijving)
    # expect(page).to have_text(dimension1.bron_type)
    # expect(page).to have_text(dimension1.bron_naam)
    # expect(page).to have_text(dimension1.doeltabel_naam)
    # expect(page).to have_text(dimension1.wijzig_ind)
    # expect(page).to have_text(dimension1.dimensie_item_num_ind)
  end
end
