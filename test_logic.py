from mylib.logic import wiki
from mylib.logic import search_wiki
from mylib.logic import geo_wiki


def test_wiki():
    assert "god" in wiki()


def test_geo_search():
    assert "Tucson, Arizona" in geo_wiki()


def test_search():
    assert "Tucson, Arizona" in search_wiki("Tucson")
