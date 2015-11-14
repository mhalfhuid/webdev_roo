require 'spec_helper'

describe 'Viewing individual dimension' do
  it 'shows dimension detail' do
    # ARRANGE
    dimension = Dimension.create( dimensie_code: 'dim1',
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

    # dimension = Dimension.create(movie_attributes(total_gross: 60000000))
    visit dimension_url(dimension)
    expect(page).to have_text(dimension.dimensie_naam)
    expect(page).to have_text(dimension.dimensie_code)
    expect(page).to have_text(dimension.bron_type)
    expect(page).to have_text(dimension.bron_naam)
    expect(page).to have_text(dimension.doeltabel_naam)
    expect(page).to have_text(dimension.wijzig_ind)
    expect(page).to have_text(dimension.dimensie_item_num_ind)
  end
end
