# frozen_string_literal: true
reauire 'rails_helper'

RSpec.describe List, "モデルに関するテスト", type: :model do


FactoryBot.define do
  factory :list do
    title { Faker::Lorem.characters(number:10) }
    body { Faker::Lorem.characters(number:30) }
  end
  
  
  describe 'モデルのテスト' do
    it "有効な投稿内容の場合は保存されるか" do
      expect(FctoryBot.build(:list)).to be_valid
  　end
  　
describe '投稿のテスト' do
  let!(:list) { create(:list,title:'hoge',body:'body') }
  describe 'トップ画面(top_path)のテスト' do
    before do
      visit top_path
    end
    context '表示の確認' do
      it 'トップ画面(top_path)に「ここはTopページです」が表示されているか' do
        expect(page).to have_content 'ここはTopページです'
      end
      it 'top_pathが"/top"であるか' do
        expect(current_path).to eq('/top')
      end
    end
  end

  describe '投稿画面のテスト' do
    before do
      visit new_list_path
    end
    context '表示の確認' do 
      it 'new_list_pathが"/lists/new"であるか' do
         expect(current_path).to eq('/lists/new')
      end
      it '投稿ボタンが表示されているか' do
         expect(page).to have_buttom '投稿'
      end
    end
    context　'投稿処理のテスト' do
      it '投稿後のリダイレクト先は正しいか' do
         fill_in 'list[title]',with: Faker::Lorem.characters(number:10)
         fill_in 'list[body]',with: Faker::Lorem.characters(number:30)
         click_buttom '投稿'
         expect(page).to have_current_path list_path(List.last)
      end
    end
  end  

  describe '一覧画面のテスト' do
    before do
      visit lists_path
    end
    context ：一覧の表示とリンクの確認
      it：一覧表示画面に投稿されたものが表示されているか
        テストコード

  describe：詳細画面のテスト
    before：詳細画面への遷移
    context：表示の確認
      it：削除リンクが存在しているか
        テストコード
      it：編集リンクが存在しているか
        テストコード
    context：リンクの遷移先の確認
      it：編集の遷移先は編集画面か
        テストコード
    context：list削除のテスト
      it：listの削除
        テストコード 
        
  describe：編集画面のテスト
    before：編集画面への遷移
    context：表示の確認
      it：編集前のタイトルと本文がフォームに表示(セット)されている
        テストコード
      it：保存ボタンが表示される
    context：更新処理に関するテスト
      it：更新後のリダイレクト先は正しいか
        テストコード






  config.include FactoryBot::Syntax::Methods
end
