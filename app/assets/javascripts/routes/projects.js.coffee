App.ProjecsRoute = Ember.Route.extend

  model: -> @store.find 'project'